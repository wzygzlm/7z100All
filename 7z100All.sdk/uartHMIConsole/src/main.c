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

#include "xeventstreamduplicate.h"
XEventstreamduplicate evDuplicate_inst;

#include "xsfast_process_data.h"
XSfast_process_data SFAST_inst;

#include "xevabmofstreamwithcontrol.h"
XEvabmofstreamwithcontrol ABMOF_inst;

//#include "xxytsstreamtorawstream.h"
//XXytsstreamtorawstream XYTS_inst;

// DVS configuration
#include "DVSConfig.h"
/************************** Variable Definitions *****************************/

/*
 * The instances to support the device drivers are global such that the
 * are initialized to zero each time the program runs.  They could be local
 * but should at least be static so they are zeroed.
 */
static XSpiPs SpiInstance;

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
	xil_printf("Config EvMux Successfully.\r\n");

    //Initialize the evSwitch IP
    Status = XEventstreamswitch_Initialize(&evSwitch_inst, XPAR_EVENTSTREAMSWITCH_0_DEVICE_ID);
    if(Status!= XST_SUCCESS)
    {
    	xil_printf("evSwitch configuration failed\r\n");
    	return(XST_FAILURE);
    }
	xil_printf("Config evSwitch Successfully.\r\n");

    //Initialize the evDuplicate IP
    Status = XEventstreamduplicate_Initialize(&evDuplicate_inst, XPAR_EVENTSTREAMSWITCH_0_DEVICE_ID);
    if(Status!= XST_SUCCESS)
    {
    	xil_printf("evDuplicate configuration failed\r\n");
    	return(XST_FAILURE);
    }
	xil_printf("Config evDuplicate_inst Successfully.\r\n");
	XEventstreamduplicate_Set_config_V(&evDuplicate_inst, 2);  // Use both jAER and VGA for display.

    //Initialize the SFAST IP
    Status = XSfast_process_data_Initialize(&SFAST_inst, XPAR_EVENTSTREAMSWITCH_0_DEVICE_ID);
    if(Status!= XST_SUCCESS)
    {
    	xil_printf("SFAST configuration failed\r\n");
    	return(XST_FAILURE);
    }
	xil_printf("Config SFAST Successfully.\r\n");

    //Initialize the ABMOF IP
    Status = XEvabmofstreamwithcontrol_Initialize(&ABMOF_inst, XPAR_EVENTSTREAMSWITCH_0_DEVICE_ID);
    if(Status!= XST_SUCCESS)
    {
    	xil_printf("ABMOF configuration failed\r\n");
    	return(XST_FAILURE);
    }
	xil_printf("Config ABMOF Successfully.\r\n");

//    //Initialize the XYTS IP
//    Status = XXytsstreamtorawstream_Initialize(&XYTS_inst, XPAR_EVMUXDATATOXYTSSTREAM_0_DEVICE_ID);
//    if(Status!= XST_SUCCESS)
//    {
//    	xil_printf("XYTS configuration failed\r\n");
//    	return(XST_FAILURE);
//    }
//	xil_printf("Config XYTS Successfully.\r\n");


	/* Initialize the GPIO driver */
	Status = XGpio_Initialize(&Gpio, XPAR_GPIO_0_DEVICE_ID);
	if (Status != XST_SUCCESS) {
		xil_printf("Gpio Initialization Failed\r\n");
		return XST_FAILURE;
	}

//	/* Initialize the DVS */
//	Status = dvsSPIInit(&SpiInstance, SPI_DEVICE_ID);
//	if (Status != XST_SUCCESS) {
//		xil_printf("DVS Init Failed\r\n");
////		return XST_FAILURE;
//	}
//
//	/* Send Bias to DVS */
//	Status = PreferencesListSetup(&SpiInstance);
//	if (Status != XST_SUCCESS) {
//		xil_printf("DVS Configure Failed\r\n");
////		return XST_FAILURE;
//	}

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

	char *fileName = "Corner.bin";
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
	printf("------------------- ZYNQ DAVIS 346 CONFIG AND STATUS ------------\n");
	printf("--------------------CASE INSENSTIVE------------------------------\n");
	printf(" Select one of the options below:\r\n");
	printf(" ## Play mode ##\r\n");
	printf("    'a' - Show play mode\r\n");
	printf("    'b' - Change play mode\r\n");
	printf(" ## Display mode\r\n");
	printf("    'c' - Show display mode\r\n");
	printf("    'd' - Change display mode\r\n");
	printf(" ## event statistics\r\n");
	printf("    'e' - Event rate info\r\n");
	printf("    'f' - Reset max event rate\r\n");
	printf(" ## ABMOF status and configuration\n");
	printf("    'g' - Toggle ABMOF calculating mode\r\n");
	printf("    'i' - Show ABMOF area event cnt threshold\r\n");
	printf("    'j' - Set ABMOF area event cnt threshold\r\n");
	printf("    'k' - Show ABMOF feedback mode\r\n");
	printf("    'l' - Toggle ABMOF feedback mode\r\n");
	printf("    'm' - Show ABMOF average target value\r\n");
	printf("    'n' - Set ABMOF average target value\r\n");
	printf(" ## SFAST status and configuration\n");
	printf("    'o' - Show corner event ration\r\n");
	printf("    'p' - Reset max corner ratio\r\n");
	printf("    'q' - Toggle SFAST output mode\r\n");
	printf("    'r' - Show SFAST threshold\r\n");
	printf("    's' - Set SFAST threshold\r\n");
	printf("    't' - Show SFAST area cnt threshold\r\n");
	printf(" ## Other options\n");
	printf("     'h' - Show available keys\n");
	printf("     'v' - Verbose Mode ON/OFF\n");

	printf("Type your command: \r\n");

    char c;

    u64 lastRowNum = 0, lastColNum = 0, lastAbsStartTime10ns = 0;
    u64 currentRowNum = 0, currentColNum = 0, currentAbsStartTime10ns = 0;
    u64 deltaRowNum = 0, deltaColNum = 0, deltaAbsStartTime10ns = 0;
    float eventRate = 0.0, maxEventRate = 0.0;

    u64 lastOutEventNum = 0, lastCornerEventNum = 0;
    u64 currentOutEventNum = 0, currentCornerEventNum = 0;
    u64 deltaOutEventNum = 0, deltaCornerEventNum = 0;
    float cornerRatio = 0.0, maxCornerRatio = 0.0;

    float lastDeltaTs = 0.0;

    int verboseMode = 0;
    int areaCntFeedbackEn = 0;

    // For setting SFAST Threshold
    u16 ToSetSFASTThrVal = 3;
	int setSFASTThrEn = 0;

    // For setting SFAST area event cnt Threshold
    u16 ToSetSFASTAreaCntThrVal = 700;
	int setSFASTAreaCntThrEn = 0;

    // For setting ABMOF area cnt Threshold
    u16 ToSetABMOFAreaCntThrVal = 700;
	int setABMOFAreaCntThrEn = 0;

    // For setting ABMOF average target value
    u16 ToSetABMOFAvrTgtVal = 30;
	int setABMOFAvrTgtValEn = 0;

    while(1)
    {
    	currentRowNum = XEvmuxdatatoxytsstream_Get_status_rowNum(&evMuxToXYTS_inst);
    	currentColNum = XEvmuxdatatoxytsstream_Get_status_colNum(&evMuxToXYTS_inst);
    	currentAbsStartTime10ns = XEvmuxdatatoxytsstream_Get_status_absTsUnit10ns(&evMuxToXYTS_inst);

    	deltaColNum = currentColNum - lastColNum;
    	deltaAbsStartTime10ns = currentAbsStartTime10ns - lastAbsStartTime10ns;

    	currentOutEventNum = XSfast_process_data_Get_status_outEventsNum(&SFAST_inst);
    	currentCornerEventNum = XSfast_process_data_Get_status_cornerEventsNum(&SFAST_inst);
    	deltaOutEventNum = currentOutEventNum - lastOutEventNum;
    	deltaCornerEventNum = currentCornerEventNum - lastCornerEventNum;

    	if(deltaAbsStartTime10ns >= 10000000)     // 100ms
    	{
        	lastRowNum = currentRowNum;
        	lastColNum = currentColNum;
        	lastAbsStartTime10ns = currentAbsStartTime10ns;

    		eventRate = (float)deltaColNum/deltaAbsStartTime10ns;
    		if(eventRate > maxEventRate)
    		{
    			maxEventRate = eventRate;
        		printf("Got max event rate which is: %f Keps\r\n", maxEventRate*100*1000);
    		}

    		lastOutEventNum = currentOutEventNum;
    		lastCornerEventNum = currentCornerEventNum;
    		cornerRatio = (float)deltaCornerEventNum/deltaOutEventNum;
    		if(cornerRatio > maxCornerRatio)
    		{
    			maxCornerRatio = cornerRatio;
        		printf("Got max corner event ratio which is: %f\r\n", cornerRatio);
    		}
    	}

//    	u64 rotateInfo = XXytsstreamtorawstream_Get_rotateInfoOut_V(&XYTS_inst);
//    	if((rotateInfo >> 63) != 0)
//    	{
//    		printf("Got a rotate flag and deltaTs is: %lld\r\n", rotateInfo & ~(1ULL << 63));
//    	}

    	u32 deltaTSHWABMOF = XEvabmofstreamwithcontrol_Get_status_currentDeltaTSHW(&ABMOF_inst);
    	float currentDeltaTs = (deltaTSHWABMOF & 0xfff) * 0.5;
    	if(currentDeltaTs != lastDeltaTs)
    	{
    		lastDeltaTs = currentDeltaTs;
    		if(currentDeltaTs >= 11.5 && verboseMode == 1)
    		{
    			printf("DeltaTs(ms) from ABMOF is : %f\r\n", currentDeltaTs);
    		}
    	}
		u32 currentFeedbackAreaCntThr = XEvabmofstreamwithcontrol_Get_status_currentFeedbackAreaCntThr(&ABMOF_inst);
		u32 currentAreaCntThr = XEvabmofstreamwithcontrol_Get_status_currentAreaCntThr(&ABMOF_inst);
		u32 currentOFHistCntSum = XEvabmofstreamwithcontrol_Get_status_currentOFHistCntSum(&ABMOF_inst);
		u32 currentOFHistRadiusSum = XEvabmofstreamwithcontrol_Get_status_currentOFHistRadiusSum(&ABMOF_inst);
		if(areaCntFeedbackEn == 1)
		{
			if(currentAreaCntThr != currentFeedbackAreaCntThr)
			{
        		ToSetABMOFAreaCntThrVal = currentFeedbackAreaCntThr;
        		setABMOFAreaCntThrEn = 1;
        		ToSetSFASTAreaCntThrVal = currentFeedbackAreaCntThr;
        		setSFASTAreaCntThrEn = 1;
			}
		}
		if(verboseMode == 1)
		{
			printf("ABMOF's feedback area count threshold is : %ld\r\n", currentFeedbackAreaCntThr);
			printf("ABMOF's OF Histogram count sum is : %ld\r\n", currentOFHistCntSum);
			printf("ABMOF's OF Histogram radius sum is : %ld\r\n", currentOFHistRadiusSum);
		}

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
        		printf("------------------- ZYNQ DAVIS 346 CONFIG AND STATUS ------------\n");
        		printf("--------------------CASE INSENSTIVE------------------------------\n");
        		printf(" Select one of the options below:\r\n");
        		printf(" ## Play mode ##\r\n");
        		printf("    'a' - Show play mode\r\n");
        		printf("    'b' - Change play mode\r\n");
        		printf(" ## Display mode\r\n");
        		printf("    'c' - Show display mode\r\n");
        		printf("    'd' - Change display mode\r\n");
        		printf(" ## event statistics\r\n");
        		printf("    'e' - Event rate info\r\n");
        		printf("    'f' - Reset max event rate\r\n");
        		printf(" ## ABMOF status and configuration\n");
        		printf("    'g' - Toggle ABMOF calculating mode\r\n");
        		printf("    'i' - Show ABMOF area event cnt threshold\r\n");
        		printf("    'j' - Set ABMOF area event cnt threshold\r\n");
        		printf("    'k' - Show ABMOF feedback mode\r\n");
        		printf("    'l' - Toggle ABMOF feedback mode\r\n");
        		printf("    'm' - Show ABMOF average target value\r\n");
        		printf("    'n' - Set ABMOF average target value\r\n");
        		printf(" ## SFAST status and configuration\n");
        		printf("    'o' - Show corner event ration\r\n");
        		printf("    'p' - Reset max corner ratio\r\n");
        		printf("    'q' - Toggle SFAST output mode\r\n");
        		printf("    'r' - Show SFAST threshold\r\n");
        		printf("    's' - Set SFAST threshold\r\n");
        		printf("    't' - Show SFAST area cnt threshold\r\n");
        		printf(" ## Other options\n");
        		printf("     'h' - Show available keys\n");
        		printf("     'v' - Verbose Mode ON/OFF\n");
        	}
        	if((c == 'a') || (c == 'A'))   // display current mode
        	{
    			printf("%c\n\r" , c);
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
    			printf("%c\n\r" , c);
        		printf("Choose which mode to be used: 0 - live mode. 1 - playback mode.\r\n");
        		printf("Your choice: ");
        		char commandChar = inbyte();
				printf("%c\n\r" , commandChar);
				if( (commandChar == '0') || (commandChar == '1') )
				{
					commandChar = commandChar - '0';
				}
				else
				{
	    	        	printf("Choice not supported.\r\nType your command: \n\r");
	    				continue;
				}
        		u32 tmpConfig = XEventstreamswitch_Get_config_V(&evSwitch_inst);
        		tmpConfig = ((tmpConfig >> 1) << 1) + commandChar;   // Set LSB to commandChar;
        		XEventstreamswitch_Set_config_V(&evSwitch_inst, tmpConfig);
        	}

        	if((c == 'c') || (c == 'C'))   // display current display
        	{
    			printf("%c\n\r" , c);
        		u32 tmpConfig = XEventstreamduplicate_Get_config_V(&evDuplicate_inst);
        		tmpConfig &= 0x3;    // LSB
        		if(tmpConfig == 0)
        		{
        			printf("Current display is jAER.\r\n");
        		}
        		else if(tmpConfig == 1)
        		{
        			printf("Current display is VGA.\r\n");
        		}
        		else if(tmpConfig == 2)
        		{
        			printf("Current display is jAER and VGA.\r\n");
        		}
        		else
        		{
        			printf("Current no display.\r\n");
        		}
        	}
        	if((c == 'd') || (c == 'D'))
        	{
    			printf("%c\n\r" , c);
        		printf("Choose which display to be used: 0 - jAER. 1 - VGA. 2 - both. 3 - none. \r\n");
        		printf("Your choice: ");
        		char commandChar = inbyte();
				printf("%c\n\r" , commandChar);
    			if( (commandChar == '0') || (commandChar == '1') || (commandChar == '2') || (commandChar == '3') )
    			{
    				commandChar = commandChar - '0';
    			}
    			else
    			{
    	        	printf("Choice not supported.\r\nType your command: \n\r");
    				continue;
    			}
        		u32 tmpConfig = XEventstreamduplicate_Get_config_V(&evDuplicate_inst);
        		tmpConfig = ((tmpConfig >> 2) << 2) + commandChar;   // Set the two LSBs to commandChar;
        		XEventstreamduplicate_Set_config_V(&evDuplicate_inst, tmpConfig);
        	}

        	if((c == 'e') || (c == 'E'))   // show current eventRate
        	{
    			printf("%c\n\r" , c);
        		printf("Current event rate is: %f Keps\r\n", eventRate*100*1000);
        		printf("Current max event rate is: %f Keps\r\n", maxEventRate*100*1000);
        	}
        	if((c == 'f') || (c == 'F'))   // reset max eventRate
        	{
    			printf("%c\n\r" , c);
        		maxEventRate = 0.0;
        	}

        	if((c == 'g') || (c == 'G'))   // toggle calculating ABMOF on all or only corners
        	{
        		printf("%c\n\r" , c);
        		u32 tmpConfig = XSfast_process_data_Get_config_V(&SFAST_inst);
        		tmpConfig ^= 1UL << 0;
        		XSfast_process_data_Set_config_V(&SFAST_inst, tmpConfig);
        	}
        	if((c == 'i') || (c == 'I'))   // show ABMOF area cnt threshold
        	{
    			printf("%c\n\r" , c);
    			u32 ABMOFAreaCntCurrentThreshold = XEvabmofstreamwithcontrol_Get_status_currentAreaCntThr(&ABMOF_inst);
        		printf("Current ABMOF area threshold is: %ld\r\n", ABMOFAreaCntCurrentThreshold);
        	}
        	if((c == 'j') || (c == 'J'))   // show ABMOF and SFAST area cnt threshold
        	{
    			printf("%c\n\r" , c);
        		u32 tmpConfigABMOF = XEvabmofstreamwithcontrol_Get_config_V(&ABMOF_inst);
        		u32 tmpConfigSFAST = XSfast_process_data_Get_config_V(&SFAST_inst);

        		printf("Set new area event cnt threshold for ABMOF. Please input 4 numbers. "
        				"For number smaller than 1000, pad 0 at the beginning.\r\n");
        		char commandChar0 = inbyte();
        		char commandChar1 = inbyte();
        		char commandChar2 = inbyte();
        		char commandChar3 = inbyte();
				if(commandChar0 >= '0' && commandChar0 <= '9'
						&& commandChar1 >= '0' && commandChar1 <= '9'
						&& commandChar2 >= '0' && commandChar2 <= '9'
						&& commandChar3 >= '0' && commandChar3 <= '9')
				{
					commandChar0 = commandChar0 - '0';
					commandChar1 = commandChar1 - '0';
					commandChar2 = commandChar2 - '0';
					commandChar3 = commandChar3 - '0';
				}
				else
				{
    	        	printf("Value not supported.\r\nType your command: \n\r");
    				continue;
				}
				u16 commandVal = (commandChar0 * 1000) + (commandChar1 * 100) + (commandChar2 * 10) + commandChar3;
				printf("New threshold: %d\n\r" , commandVal);

				char low8BitsSFAST = tmpConfigSFAST & 0xff;
				low8BitsSFAST |= 0x08;      // set bit 2 to 1 so the threshold will use external config
				u32 new24BitsSFAST = ((u32)commandVal << 8) + low8BitsSFAST;
        		tmpConfigSFAST = ((tmpConfigSFAST >> 24) << 24) + new24BitsSFAST;
        		XSfast_process_data_Set_config_V(&SFAST_inst, tmpConfigSFAST); // Enable the config bit and send the config value
           		for(int i = 0; i< 1000; i++);   // Delay some time for config big to make sure HW capture it.
        		tmpConfigSFAST &= ~0x08;
        		XSfast_process_data_Set_config_V(&SFAST_inst, tmpConfigSFAST); // Clear the config bit

				char low8BitsABMOF = tmpConfigABMOF & 0xff;
				low8BitsABMOF |= 0x01;      // set bit 0 to 1 so the ABMOF threshold will use external config
				u32 new24BitsABMOF = ((u32)commandVal << 8) + low8BitsABMOF;
        		tmpConfigABMOF = ((tmpConfigABMOF >> 24) << 24) + new24BitsABMOF;
        		XEvabmofstreamwithcontrol_Set_config_V(&ABMOF_inst, tmpConfigABMOF); // Enable the config bit and send the config value
           		for(int i = 0; i< 1000; i++);  // Delay some time for config big to make sure HW capture it.
        		tmpConfigABMOF &= ~0x01;
        		XEvabmofstreamwithcontrol_Set_config_V(&ABMOF_inst, tmpConfigABMOF); // Clear the config bit

        		ToSetABMOFAreaCntThrVal = commandVal;
        		setABMOFAreaCntThrEn = 1;
        		ToSetSFASTAreaCntThrVal = commandVal;
        		setSFASTAreaCntThrEn = 1;
        	}
        	if((c == 'k') || (c == 'K'))   // Show feedback mode
        	{
    			printf("%c\n\r" , c);
        		if(areaCntFeedbackEn == 1)
        		{
        			printf("HW area event number feedback mode is on.\r\n");
        		}
        		else
        		{
        			printf("HW area event number feedback mode is off.\r\n");
        		}
        	}
        	if((c == 'l') || (c == 'L'))   // Toggle feedback mode
        	{
    			printf("%c\n\r" , c);
        		if(areaCntFeedbackEn == 0)
        		{
        			areaCntFeedbackEn = 1;
        			printf("HW area event number feedback turns on.\r\n");
        		}
        		else
        		{
        			areaCntFeedbackEn = 0;
        			printf("HW area event number feedback turns off.\r\n");
        		}
        	}
        	if((c == 'm') || (c == 'M'))   // show ABMOF average target value
        	{
    			printf("%c\n\r" , c);
    			u32 ABMOFCurrentAvrTgtValue = XEvabmofstreamwithcontrol_Get_status_currentAverageTgtValue(&ABMOF_inst);
        		printf("Current ABMOF average target value is: %ld\r\n", ABMOFCurrentAvrTgtValue);
        	}
        	if((c == 'n') || (c == 'N'))   // set ABMOF average target value
        	{
    			printf("%c\n\r" , c);
        		printf("Set new area event cnt threshold for ABMOF. Please input 4 numbers. "
        				"For number smaller than 1000, pad 0 at the beginning.\r\n");
        		char commandChar0 = inbyte();
        		char commandChar1 = inbyte();
        		char commandChar2 = inbyte();
        		char commandChar3 = inbyte();
				if(commandChar0 >= '0' && commandChar0 <= '9'
						&& commandChar1 >= '0' && commandChar1 <= '9'
						&& commandChar2 >= '0' && commandChar2 <= '9'
						&& commandChar3 >= '0' && commandChar3 <= '9')
				{
					commandChar0 = commandChar0 - '0';
					commandChar1 = commandChar1 - '0';
					commandChar2 = commandChar2 - '0';
					commandChar3 = commandChar3 - '0';
				}
				else
				{
    	        	printf("Value not supported.\r\nType your command: \n\r");
    				continue;
				}
				u16 commandVal = (commandChar0 * 1000) + (commandChar1 * 100) + (commandChar2 * 10) + commandChar3;
				printf("New threshold: %d\n\r" , commandVal);

				ToSetABMOFAvrTgtVal = commandVal;
				// Every time only one configuration can be set
				// Because they share the same configuration register
				setABMOFAvrTgtValEn = 1;
				setABMOFAreaCntThrEn = 0;
        	}


        	if((c == 'o') || (c == 'O'))   // show corner event ratio
        	{
    			printf("%c\n\r" , c);
        		printf("Current corner ratio is: %f\r\n", cornerRatio);
        		printf("Current max corner ratio is: %f\r\n", maxCornerRatio);
        	}
        	if((c == 'p') || (c == 'P'))   // reset max corner ratio
        	{
    			printf("%c\n\r" , c);
        		maxCornerRatio = 0.0;
        	}
        	if((c == 'q') || (c == 'Q'))   // toggle SFAST output all or only corner events
        	{
    			printf("%c\n\r" , c);
        		u32 tmpConfig = XSfast_process_data_Get_config_V(&SFAST_inst);
        		tmpConfig ^= 1UL << 1;
        		XSfast_process_data_Set_config_V(&SFAST_inst, tmpConfig);
        	}
        	if((c == 'r') || (c == 'R'))   // show SFAST threshold
        	{
    			printf("%c\n\r" , c);
    			u32 SFASTCurrentThreshold = XSfast_process_data_Get_status_currentThreshold(&SFAST_inst);
        		printf("Current SFAST threshold is: %ld\r\n", SFASTCurrentThreshold);
        	}
        	if((c == 's') || (c == 'S'))   // set SFAST threshold
        	{
    			printf("%c\n\r" , c);
        		printf("Set new threshold in HEX, range from 0x0 - 0xf. \r\n");
        		char commandChar = inbyte();
				printf("New threshold: %c\n\r" , commandChar);
				if(commandChar >= '0' && commandChar <= '9')
				{
					commandChar = commandChar - '0';
				}
				else if(commandChar >= 'a' && commandChar <= 'f')
				{
					commandChar = commandChar - 'a' + 0xa;
				}
				else
				{
    	        	printf("Value not supported.\r\nType your command: \n\r");
    				continue;
				}

				ToSetSFASTThrVal = commandChar;
				// Every time only one configuration can be set
				// Because they share the same configuration register
				setSFASTThrEn = 1;
				setSFASTAreaCntThrEn = 0;
        	}
        	if((c == 't') || (c == 'T'))   // show SFAST area cnt threshold
        	{
    			printf("%c\n\r" , c);
    			u32 SFASTAreaCntCurrentThreshold = XSfast_process_data_Get_status_currentAreaCntThr(&SFAST_inst);
        		printf("Current SFAST area cnt threshold is: %ld\r\n", SFASTAreaCntCurrentThreshold);
        	}

        	if((c == 'v') || (c == 'V'))   // show SFAST area cnt threshold
        	{
    			printf("%c\n\r" , c);
        		if(verboseMode == 0)
        		{
        			verboseMode = 1;
        			printf("Verbose Mode on.\r\n");
        		}
        		else
        		{
        			verboseMode = 0;
        			printf("Verbose Mode off.\r\n");
        		}
        	}
        	printf("Type your command: \n\r");
    	}

    	// set SFAST threshold
		u32 tmpConfig;
        if(setSFASTThrEn == 1)
        {
        	tmpConfig = XSfast_process_data_Get_config_V(&SFAST_inst);
    		char low8Bits = tmpConfig & 0xff;
    		low8Bits |= 0x04;      // set bit 2 to 1 to set SFAST threshold
    		u16 new16Bits = ((u16)ToSetSFASTThrVal << 8) + low8Bits;
    		tmpConfig = ((tmpConfig >> 16) << 16) + new16Bits;
    		XSfast_process_data_Set_config_V(&SFAST_inst, tmpConfig); // Enable the config bit and send the value
        }

        // set SFAST area event cnt
		u32 tmpConfigSFAST;
        if(setSFASTAreaCntThrEn == 1)
        {
        	tmpConfigSFAST = XSfast_process_data_Get_config_V(&SFAST_inst);
			char low8BitsSFAST = tmpConfigSFAST & 0xff;
			low8BitsSFAST |= 0x08;      // set bit 2 to 1 so the threshold will use external config
			u32 new24BitsSFAST = ((u32)ToSetSFASTAreaCntThrVal << 8) + low8BitsSFAST;
    		tmpConfigSFAST = ((tmpConfigSFAST >> 24) << 24) + new24BitsSFAST;
    		XSfast_process_data_Set_config_V(&SFAST_inst, tmpConfigSFAST); // Enable the config bit and send the config value
        }

        // set ABMOF area event cnt
		u32 tmpConfigABMOF;
        if(setABMOFAreaCntThrEn == 1)
        {
        	tmpConfigABMOF = XEvabmofstreamwithcontrol_Get_config_V(&ABMOF_inst);
			char low8BitsABMOF = tmpConfigABMOF & 0xff;
			low8BitsABMOF |= 0x01;      // set bit 0 to 1 so the ABMOF threshold will use external config
			u32 new24BitsABMOF = ((u32)ToSetABMOFAreaCntThrVal << 8) + low8BitsABMOF;
    		tmpConfigABMOF = ((tmpConfigABMOF >> 24) << 24) + new24BitsABMOF;
    		XEvabmofstreamwithcontrol_Set_config_V(&ABMOF_inst, tmpConfigABMOF); // Enable the config bit and send the config value
        }

        // set ABMOF average target distance
		u32 tmpConfigABMOF1;
        if(setABMOFAvrTgtValEn == 1)
        {
        	tmpConfigABMOF1 = XEvabmofstreamwithcontrol_Get_config_V(&ABMOF_inst);
			char low8BitsABMOF = tmpConfigABMOF1 & 0xff;
			low8BitsABMOF |= 0x02;      // set bit 1 to 1 so the ABMOF average target value will use external config
			u32 new24BitsABMOF = ((u32)ToSetABMOFAvrTgtVal << 8) + low8BitsABMOF;
			tmpConfigABMOF1 = ((tmpConfigABMOF1 >> 24) << 24) + new24BitsABMOF;
    		XEvabmofstreamwithcontrol_Set_config_V(&ABMOF_inst, tmpConfigABMOF1); // Enable the config bit and send the config value
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
        	int custData = (data1 & 0x7ff);
        	data1 = (y << POLARITY_Y_ADDR_SHIFT) + (x << POLARITY_X_ADDR_SHIFT)+ (pol << POLARITY_SHIFT) + custData;

			u64 data = ((u64)data2 << 32) + data1;
        	XEventsgeneratorviafile_Set_input_V(&EGVF, data);
        	XEventsgeneratorviafile_Set_input_V_vld(&EGVF);
        }
        SD_Transfer_read(fileName,offset,(u32)picture1,eventsReadNumPerTime * 8, &dataReadOut);

        // Configuration can only be valid after events have been sent to those IPs.
        // Now we can disable the corresponding bits.
        if(setSFASTThrEn == 1)
        {
        	tmpConfig &= ~0x04;
        	XSfast_process_data_Set_config_V(&SFAST_inst, tmpConfig); // Clear the config bit
        	setSFASTThrEn = 0;
        }

        if(setSFASTAreaCntThrEn == 1)
        {
    		tmpConfigSFAST &= ~0x08;
    		XSfast_process_data_Set_config_V(&SFAST_inst, tmpConfigSFAST); // Clear the config bit
    		setSFASTAreaCntThrEn = 0;
        }

        if(setABMOFAreaCntThrEn == 1)
        {
    		tmpConfigABMOF &= ~0x01;
    		XEvabmofstreamwithcontrol_Set_config_V(&ABMOF_inst, tmpConfigABMOF); // Clear the config bit
    		setABMOFAreaCntThrEn = 0;
        }

        if(setABMOFAvrTgtValEn == 1)
        {
    		tmpConfigABMOF1 &= ~0x02;
    		XEvabmofstreamwithcontrol_Set_config_V(&ABMOF_inst, tmpConfigABMOF1); // Clear the config bit
    		setABMOFAvrTgtValEn = 0;
        }

    }

    return 0;
}
