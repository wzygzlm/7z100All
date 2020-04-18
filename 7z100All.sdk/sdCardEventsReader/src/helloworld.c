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

#define YSHIFT 22
#define YMASK (511 << YSHIFT) // 9 bits from bits 22 to 30
#define XSHIFT 12
#define XMASK (1023 << XSHIFT) // 10 bits from bits 12 to 21
#define POLSHIFT 11
#define POLMASK (1 << POLSHIFT)  // 1 bit at bit 11

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
int SD_Transfer_read(char *FileName,u32 DestinationAddress,u32 ByteLength)
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
    rc = f_lseek(&fil, 0);
    if(rc)
    {
        xil_printf("ERROR : f_lseek returned %d\r\n",rc);
        return XST_FAILURE;
    }
    rc = f_read(&fil, (void*)DestinationAddress,ByteLength,&br);
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


//	XGpio_SetDataDirection(&Gpio, 2, 0xffffffff);     // Input for status monitor
	XGpio_SetDataDirection(&Gpio, 1, 0);              // Output for control

	Status = XEventsgeneratorviafile_Initialize(&EGVF, XPAR_EVENTSGENERATORVIAFI_0_DEVICE_ID);

	SD_Init();
    SD_Transfer_read("cbrd.aed",(u32)picture1,800*600*3+1);

    while(1)
    {
        for(int i = 0; i < 800*600 *3; i += 8)
        {
        	u32 data1 = (picture1[i] << 24) + (picture1[i+1] << 16) + (picture1[i+2] << 8) + picture1[i+3];
//        	int pol = (data1 & POLMASK) >> POLSHIFT;
//        	int x = (data1 & XMASK) >> XSHIFT;
//        	int y = (data1 & YMASK) >> YSHIFT;
//        	data1 = (y << 16) + (x << 1) + pol;
        	u32 data2 = (picture1[i+4] << 24) + (picture1[i+5] << 16) + (picture1[i+6] << 8) + picture1[i+7];
        	u64 data = ((u64)data2 << 32) + data1;
        	XEventsgeneratorviafile_Set_input_V(&EGVF, data);
        	XEventsgeneratorviafile_Set_counterIn_V(&EGVF, i/8);
        	XEventsgeneratorviafile_Set_input_V_vld(&EGVF);
        }
    }


    return 0;
}
