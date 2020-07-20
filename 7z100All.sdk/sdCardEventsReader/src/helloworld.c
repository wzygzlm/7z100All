/*
 * main.cpp
 *
 *  Created on: Sep 26, 2019
 *      Author: minliu
 */

#include "xaxivdma.h"
#include "xaxivdma_i.h"
#include "sleep.h"

#include <string.h>
#include "xparameters.h"
#include "xil_printf.h"
#include "ff.h"
#include "xdevcfg.h"
#include "sd.h"


#include "xgpio.h"

XGpio Gpio; /* The Instance of the GPIO Driver */

#include "xeventsgeneratorviafile.h"
XEventsgeneratorviafile EGVF;

#define DDR_BASEADDR        0x100000
#define VDMA_BASEADDR       XPAR_AXI_VDMA_0_BASEADDR
#define H_STRIDE            800
#define H_ACTIVE            800
#define V_ACTIVE            600

#define VIDEO_BASEADDR0 DDR_BASEADDR + 0x1000000
#define VIDEO_BASEADDR1 DDR_BASEADDR + 0x2000000
#define VIDEO_BASEADDR2 DDR_BASEADDR + 0x3000000

#define POLARITY_SHIFT 11
#define POLARITY_MASK (1 << POLARITY_SHIFT)  // 1 bit at bit 11
#define POLARITY_Y_ADDR_SHIFT 22
#define POLARITY_Y_ADDR_MASK (511 << POLARITY_Y_ADDR_SHIFT) // 9 bits from bits 22 to 30
#define POLARITY_X_ADDR_SHIFT 12
#define POLARITY_X_ADDR_MASK (1023 << POLARITY_X_ADDR_SHIFT) // 10 bits from bits 12 to 21

void Xil_DCacheFlush(void);

unsigned char picture1[800*600*3]={0};
static FATFS fatfs;

void show_img(u32 x, u32 y, u32 disp_base_addr, unsigned char * addr, u32 size_x, u32 size_y)
{
    u32 i=0;
    u32 j=0;
    u32 r,g,b;
    u32 start_addr=disp_base_addr;
    start_addr = disp_base_addr + 3*x + y*3*H_STRIDE;
    for(j=0;j<size_y;j++)
    {
        for(i=0;i<size_x;i++)
        {
            b = *(addr+(i+j*size_x)*3+0);
            g = *(addr+(i+j*size_x)*3+1);
            r = *(addr+(i+j*size_x)*3+2);
            Xil_Out8((start_addr+(i+j*H_STRIDE)*3) + 0, g);
            Xil_Out8((start_addr+(i+j*H_STRIDE)*3) + 1, b);
            Xil_Out8((start_addr+(i+j*H_STRIDE)*3) + 2, r);
//            Xil_Out32((start_addr+(i+j*H_STRIDE)*3),((r<<16)|(b<<8)|(g<<0)|0x0));
        }
    }
    Xil_DCacheFlush();
}

int SD_Init()
{
    FRESULT rc;
	TCHAR *path = "0:/"; /* Logical drive number is 0 */

	/* Register volume work area, initialize device */
	rc = f_mount(&fatfs, path, 0);
	if(rc)
    {
        xil_printf("ERROR : f_mount returned %d\r\n",rc);
        return XST_FAILURE;
    }
    return XST_SUCCESS;
}

int SD_Transfer_read(char *FileName,u64 fileOffset, u32 DestinationAddress,u32 ByteLength, u64 *dataRead)
{
    FIL fil;
    FRESULT rc;
    UINT br;
    rc = f_open(&fil,FileName,FA_READ);
    if(rc)
    {
        xil_printf("ERROR : f_open returned %d\r\n",rc);
        return XST_FAILURE;
    }
    if( fileOffset > (fil.fsize) )
    {
    	fileOffset = 0;
    }
    rc = f_lseek(&fil, fileOffset);
    if(rc)
    {
        xil_printf("ERROR : f_lseek returned %d\r\n",rc);
        return XST_FAILURE;
    }
    rc = f_read(&fil, (void*)DestinationAddress,ByteLength,&br);
    *dataRead = br;
    if(rc)
    {
        xil_printf("ERROR : f_read returned %d\r\n",rc);
        return XST_FAILURE;
    }
    rc = f_close(&fil);
    if(rc)
    {
        xil_printf(" ERROR : f_close returned %d\r\n", rc);
        return XST_FAILURE;
    }
    return XST_SUCCESS;
}

int main(void)
{
	int Status;

	init_platform();

    u32 i;
    xil_printf("Starting the first VDMA \n\r");

    //VDMA configurateAXI VDMA0
    /*****************DDR Write setting**********************/
    //Xil_Out32((VDMA_BASEADDR + 0x030), 0x3);// enable circular mode
    //Xil_Out32((VDMA_BASEADDR + 0x0AC), VIDEO_BASEADDR0);  // start address
    //Xil_Out32((VDMA_BASEADDR + 0x0B0), VIDEO_BASEADDR1);  // start address
    //Xil_Out32((VDMA_BASEADDR + 0x0B4), VIDEO_BASEADDR2);  // start address
    //Xil_Out32((VDMA_BASEADDR + 0x0A8), (H_STRIDE*4));     // h offset (800 * 4) bytes
    //Xil_Out32((VDMA_BASEADDR + 0x0A4), (H_ACTIVE*4));     // h size (600 * 4) bytes
    //Xil_Out32((VDMA_BASEADDR + 0x0A0), V_ACTIVE);         // v size (600)
    /*****************DDR read setting**********************/
    Xil_Out32((VDMA_BASEADDR + 0x000), 0x3);        // enable circular mode
    Xil_Out32((VDMA_BASEADDR + 0x05c), VIDEO_BASEADDR0);    // start address
    Xil_Out32((VDMA_BASEADDR + 0x060), VIDEO_BASEADDR1);    // start address
    Xil_Out32((VDMA_BASEADDR + 0x064), VIDEO_BASEADDR2);    // start address
    Xil_Out32((VDMA_BASEADDR + 0x058), (H_STRIDE*3));       // h offset (800 * 4) bytes
    Xil_Out32((VDMA_BASEADDR + 0x054), (H_ACTIVE*3));       // h size (800 * 4) bytes
    Xil_Out32((VDMA_BASEADDR + 0x050), V_ACTIVE);           // v size (600)

    for(i=0;i<H_STRIDE*H_ACTIVE;i++)
    {
        Xil_Out32(VIDEO_BASEADDR0+i,0);
    }

	/* Initialize the GPIO driver */
	Status = XGpio_Initialize(&Gpio, XPAR_GPIO_0_DEVICE_ID);
	if (Status != XST_SUCCESS) {
		xil_printf("Gpio Initialization Failed\r\n");
		return XST_FAILURE;
	}

	XGpio_SetDataDirection(&Gpio, 1, 0);              // Output for control

	u32 tmpGpioData = XGpio_DiscreteRead(&Gpio, 1);
	tmpGpioData = tmpGpioData | 0x8;
	XGpio_DiscreteWrite(&Gpio, 1, tmpGpioData);
	tmpGpioData = tmpGpioData  & ~0x8;
	XGpio_DiscreteWrite(&Gpio, 1, tmpGpioData);

	tmpGpioData = XGpio_DiscreteRead(&Gpio, 1);
	tmpGpioData = tmpGpioData | 0x3; // Reset cdc core and ULPI wrapper
	tmpGpioData = tmpGpioData & ~0x4; // Disable cdc core
	XGpio_DiscreteWrite(&Gpio, 1, tmpGpioData);

	tmpGpioData = tmpGpioData & ~0x3; // stop resetting cdc core and ULPI wrapper
	tmpGpioData = tmpGpioData | 0x4; // enable cdc core
	XGpio_DiscreteWrite(&Gpio, 1, tmpGpioData);

	tmpGpioData = XGpio_DiscreteRead(&Gpio, 1);
	tmpGpioData = tmpGpioData | 0x8; // enable host ack
	XGpio_DiscreteWrite(&Gpio, 1, tmpGpioData);


//	XGpio_SetDataDirection(&Gpio, 2, 0xffffffff);     // Input for status monitor
	XGpio_SetDataDirection(&Gpio, 1, 0);              // Output for control

	Status = XEventsgeneratorviafile_Initialize(&EGVF, XPAR_EVENTSGENERATORVIAFI_0_DEVICE_ID);

	SD_Init();

	char *fileName = "OFRet.bin";
	int offset = 0;
	u64 dataReadOut;
	int dataStartOffset = 0;

//	// Try to get the file header
//	unsigned char tmpC;
//	int breakcond = 0;
//	while (!breakcond)
//	{
//		SD_Transfer_read(fileName,offset,(u32)&tmpC,1, &dataReadOut);
//		offset++;
//		if(tmpC == 'H')
//		{
//			SD_Transfer_read(fileName,offset,(u32)&tmpC,1, &dataReadOut);
//			offset++;
//			if(tmpC == 'e')
//			{
//				SD_Transfer_read(fileName,offset,(u32)&tmpC,1, &dataReadOut);
//				offset++;
//				if(tmpC == 'a')
//				{
//					SD_Transfer_read(fileName,offset,(u32)&tmpC,1, &dataReadOut);
//					offset++;
//					if(tmpC == 'd')
//					{
//						SD_Transfer_read(fileName,offset,(u32)&tmpC,1, &dataReadOut);
//						offset++;
//						if(tmpC == 'e')
//						{
//							SD_Transfer_read(fileName,offset,(u32)&tmpC,1, &dataReadOut);
//							offset++;
//							if(tmpC == 'r')
//							{
//								SD_Transfer_read(fileName,offset,(u32)&tmpC,1, &dataReadOut);
//								offset++;
//								breakcond = 1;
//							}
//						}
//					}
//				}
//			}
//		}
//	}
//	offset++;
//	dataStartOffset = offset;

	int eventsReadNumPerTime = 8000;
    SD_Transfer_read(fileName,offset,(u32)picture1,eventsReadNumPerTime * 8, &dataReadOut);

    while(1)
    {
//        u32 tmpGpioData = XGpio_DiscreteRead(&Gpio, 1);
//        if((tmpGpioData & 0x10000) == 0)  // In live mode, we ignore the data
//        {
//        	continue;
//        }

    	int bytesToRead;
        if(dataReadOut < eventsReadNumPerTime * 8)
        {
        	offset = dataStartOffset;
        	bytesToRead = dataReadOut;
        }
        else
        {
            offset +=  eventsReadNumPerTime * 8;
            bytesToRead = eventsReadNumPerTime * 8;
        }

        for(int i = 0; i < bytesToRead; i += 8)
        {
        	u32 data1 = (picture1[i] << 24) + (picture1[i+1] << 16) + (picture1[i+2] << 8) + picture1[i+3];
        	u32 data2 = (picture1[i+4] << 24) + (picture1[i+5] << 16) + (picture1[i+6] << 8) + picture1[i+7];

        	int x = ((data1) & POLARITY_X_ADDR_MASK) >> POLARITY_X_ADDR_SHIFT;
        	x = x;
        	int y = ((data1) & POLARITY_Y_ADDR_MASK) >> POLARITY_Y_ADDR_SHIFT;
        	y = 259 - y;
        	int pol  = ((data1) & POLARITY_MASK) >> POLARITY_SHIFT;
        	int custData = (data1 & 0x3ff);
        	data1 = (y << POLARITY_Y_ADDR_SHIFT) + (x << POLARITY_X_ADDR_SHIFT)+ (pol << POLARITY_SHIFT) + custData;

			u64 data = ((u64)data2 << 32) + data1;
        	XEventsgeneratorviafile_Set_input_V(&EGVF, data);
        	XEventsgeneratorviafile_Set_input_V_vld(&EGVF);
        }
        SD_Transfer_read(fileName,offset,(u32)picture1,eventsReadNumPerTime * 8, &dataReadOut);
    }


    return 0;
}
