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

#include "xuartps.h"

#include "xgpio.h"

XGpio Gpio; /* The Instance of the GPIO Driver */

#include "xeventsgeneratorviafile.h"
XEventsgeneratorviafile EGVF;

#include "xeventstreamtoconstencntframestream.h"
XEventstreamtoconstencntframestream etf_inst;

#include "xevmuxdatatoxytsstream.h"
XEvmuxdatatoxytsstream evMuxToXYTS_inst;

#include "xeventstreamswitch.h"
XEventstreamswitch evSwitch_inst;

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

    print("VDMA application on davis 7z100 using PMOD VGA\n\r");
    //Initialize the ETF IP
    Status = XEventstreamtoconstencntframestream_Initialize(&etf_inst, XPAR_EVENTSTREAMTOCONSTEN_0_DEVICE_ID);
    if(Status!= XST_SUCCESS)
    {
    	xil_printf("ETF configuration failed\r\n");
    	return(XST_FAILURE);
    }

    // Configure the ETF
    uint32_t configEn = XEventstreamtoconstencntframestream_Get_ctrl_V(&etf_inst);
    uint32_t sliceDuration = XEventstreamtoconstencntframestream_Get_configRegs_V(&etf_inst);
    configEn = 0x1401; // basic pixel value is 0x14, and enable configuration
    sliceDuration = 20;
    XEventstreamtoconstencntframestream_Set_configRegs_V(&etf_inst, sliceDuration);   // Set config enable
    XEventstreamtoconstencntframestream_Set_ctrl_V(&etf_inst, configEn);
    XEventstreamtoconstencntframestream_Set_configRegs_V(&etf_inst, sliceDuration);   // Clear config enable

	/* Start of VDMA Configuration */
    Xil_Out32 (XPAR_AXI_VDMA_0_BASEADDR + 0x30, 0x8B);
    Xil_Out32(XPAR_AXI_VDMA_0_BASEADDR + 0xAC, 0xD000000);
    Xil_Out32(XPAR_AXI_VDMA_0_BASEADDR + 0xB0, 0xE000000);
    Xil_Out32(XPAR_AXI_VDMA_0_BASEADDR + 0xB4, 0xF000000);
    Xil_Out32 (XPAR_AXI_VDMA_0_BASEADDR + 0xA8, 800*3);
    Xil_Out32 (XPAR_AXI_VDMA_0_BASEADDR + 0xA4, 800*3);
    Xil_Out32(XPAR_AXI_VDMA_0_BASEADDR + 0xA0, 600);

    Xil_Out32(XPAR_AXI_VDMA_0_BASEADDR + 0x00, 0x8B);
    Xil_Out32(XPAR_AXI_VDMA_0_BASEADDR + 0x5C, 0xD000000);
    Xil_Out32(XPAR_AXI_VDMA_0_BASEADDR + 0x60, 0xE000000);
    Xil_Out32(XPAR_AXI_VDMA_0_BASEADDR + 0x64, 0xF000000);
    Xil_Out32 (XPAR_AXI_VDMA_0_BASEADDR + 0x58, 800*3);
    Xil_Out32 (XPAR_AXI_VDMA_0_BASEADDR + 0x54, 800*3);
    Xil_Out32 (XPAR_AXI_VDMA_0_BASEADDR + 0x50, 600);
	/* End of VDMA Configuration */

    //Initialize the EvMux IP
    Status = XEvmuxdatatoxytsstream_Initialize(&evMuxToXYTS_inst, XPAR_EVMUXDATATOXYTSSTREAM_0_DEVICE_ID);
    if(Status!= XST_SUCCESS)
    {
    	xil_printf("EvMux configuration failed\r\n");
    	return(XST_FAILURE);
    }

    //Initialize the evSwitch IP
    Status = XEventstreamswitch_Initialize(&evSwitch_inst, XPAR_EVENTSTREAMSWITCH_0_DEVICE_ID);
    if(Status!= XST_SUCCESS)
    {
    	xil_printf("evSwitch configuration failed\r\n");
    	return(XST_FAILURE);
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

	// keys used: abcdef_hi_klmn_pqrst_vwx_z  123456789
	printf("\n\n\n\n-----------------------------------------------------------------\n");
	printf("------------------- ZYNQ DAVIS 346 CONFIG AND STATUS ------------------\n");
	printf("-----------------------------------------------------------------\n");
	printf(" Select one of the options below:\r\n");
	printf(" ## Memory Test ##\r\n");
	printf("    's' - Test 1MB length from address 0x100000\r\n");
	printf("    '1' - Test 32MB length from address 0x100000\r\n");
	printf("    '2' - Test 64MB length from address 0x100000\r\n");
	printf("    '3' - Test 128MB length from address 0x100000\r\n");
	printf("    '4' - Test 255MB length from address 0x100000\r\n");
	printf("    '5' - Test 511MB length from address 0x100000\r\n");
	printf("    '6' - Test 1023MB length from address 0x100000\r\n");
	printf(" ## Read Data Eye Measurement Test\r\n");
	printf("    'r' - Measure Read Data Eye\r\n");
	printf(" ## Write Data Eye Measurement Test\r\n");
	printf("    'i' - Measure Write Data Eye\r\n");
	printf("    Other options for Write Eye Data Test:\r\n");
	printf("         'f' - Fast Mode: Toggles Fast mode - ON/OFF\r\n");
	printf("         'c' - Centre Mode: Toggles Centre mode - ON/OFF\r\n");
	printf("         'e' - Vary the size of memory test for Read/Write Eye Measurement tests\r\n");
	printf(" ## Data Cache Enable / Disable Option:\r\n");
	printf("     'z' - D-Cache Enable / Disable\r\n");
	printf(" ## Other options\n");
	printf("     'v' - Verbose Mode ON/OFF\n");

	printf("Type your command: \r\n");

    char c;

    while(1)
    {

//
//        c = inbyte();
//        if(c == '\r')
//        {
//          outbyte('\n');
//        }
//        printf("\n\rOption Selected : %c",c);
//        outbyte(c);
//        printf("\n\n");
//
//    	if ((c == 's') || (c == 'S'))
//    	{
//    		printf("\r\nStarting Memory Test 's' - Testing 1MB length from address 0x100000...\r\n");
//    	}

    	// non-block uart read
    	if (XUartPs_IsReceiveData(STDIN_BASEADDRESS)) {
        	c = XUartPs_ReadReg(STDIN_BASEADDRESS, XUARTPS_FIFO_OFFSET);
			if(c == '\r')
			{
				outbyte('\n');
			}
        	if((c == 'h') || (c == 'H'))   // Display all supported keys
        	{
        		// keys used: abcdef_hi_klmn_pqrst_vwx_z  123456789
				printf("\n\n\n\n-----------------------------------------------------------------\n");
				printf("------------------- ZYNQ DAVIS 346 CONFIG AND STATUS ------------------\n");
				printf("-----------------------------------------------------------------\n");
				printf(" Select one of the options below:\r\n");
				printf(" ## Memory Test ##\r\n");
				printf("    's' - Test 1MB length from address 0x100000\r\n");
				printf("    '1' - Test 32MB length from address 0x100000\r\n");
				printf("    '2' - Test 64MB length from address 0x100000\r\n");
				printf("    '3' - Test 128MB length from address 0x100000\r\n");
				printf("    '4' - Test 255MB length from address 0x100000\r\n");
				printf("    '5' - Test 511MB length from address 0x100000\r\n");
				printf("    '6' - Test 1023MB length from address 0x100000\r\n");
				printf(" ## Read Data Eye Measurement Test\r\n");
				printf("    'r' - Measure Read Data Eye\r\n");
				printf(" ## Write Data Eye Measurement Test\r\n");
				printf("    'i' - Measure Write Data Eye\r\n");
				printf("    Other options for Write Eye Data Test:\r\n");
				printf("         'f' - Fast Mode: Toggles Fast mode - ON/OFF\r\n");
				printf("         'c' - Centre Mode: Toggles Centre mode - ON/OFF\r\n");
				printf("         'e' - Vary the size of memory test for Read/Write Eye Measurement tests\r\n");
				printf(" ## Data Cache Enable / Disable Option:\r\n");
				printf("     'z' - D-Cache Enable / Disable\r\n");
				printf(" ## Other options\n");
				printf("     'v' - Verbose Mode ON/OFF\n");
        	}
        	if((c == 'a') || (c == 'A'))   // display current mode
        	{
        		u32 tmpConfig = XEventstreamswitch_Get_config_V(&evSwitch_inst);
        		tmpConfig &= 0x1;    // LSB
        		if(tmpConfig == 0)
        		{
        			printf("Current mode is live mode.\r\n");
        		}
        		else
        		{
        			printf("Current mode is playback mode.\r\n");
        		}
        	}
        	if((c == 'b') || (c == 'B'))
        	{
        		printf("Choose which mode to be used: 0 - live mode. 1 - playback mode.\r\n");
        		printf("Your choice: ");
        		outbyte(' ');
        		char commandChar = inbyte();
				outbyte(commandChar);
				if( (commandChar == '0') || (commandChar == '1') )
				{
					commandChar = commandChar - '0';
				}
				else
				{
					continue;
				}
        		u32 tmpConfig = XEventstreamswitch_Get_config_V(&evSwitch_inst);
        		tmpConfig = ((tmpConfig >> 1) << 1) + commandChar;   // Set LSB to c;
        		XEventstreamswitch_Set_config_V(&evSwitch_inst, tmpConfig);
        	}

        	printf("Type your command: \r\n");
    	}

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
