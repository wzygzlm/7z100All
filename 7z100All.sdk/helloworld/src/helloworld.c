/******************************************************************************
*
* Copyright (C) 2009 - 2014 Xilinx, Inc.  All rights reserved.
*
* Permission is hereby granted, free of charge, to any person obtaining a copy
* of this software and associated documentation files (the "Software"), to deal
* in the Software without restriction, including without limitation the rights
* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
* copies of the Software, and to permit persons to whom the Software is
* furnished to do so, subject to the following conditions:
*
* The above copyright notice and this permission notice shall be included in
* all copies or substantial portions of the Software.
*
* Use of the Software is limited solely to applications:
* (a) running on a Xilinx device, or
* (b) that interact with a Xilinx device through a bus or interconnect.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
* XILINX  BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
* WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF
* OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
* SOFTWARE.
*
* Except as contained in this notice, the name of the Xilinx shall not be used
* in advertising or otherwise to promote the sale, use or other dealings in
* this Software without prior written authorization from Xilinx.
*
******************************************************************************/

/*
 * helloworld.c: simple test application
 *
 * This application configures UART 16550 to baud rate 9600.
 * PS7 UART (Zynq) is not initialized by this application, since
 * bootrom/bsp configures it to baud rate 115200
 *
 * ------------------------------------------------
 * | UART TYPE   BAUD RATE                        |
 * ------------------------------------------------
 *   uartns550   9600
 *   uartlite    Configurable only in HW design
 *   ps7_uart    115200 (configured by bootrom/bsp)
 */

#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"

#include "xgpio.h"

XGpio Gpio; /* The Instance of the GPIO Driver */

#include "xeventstreamtoconstencntframestream.h"
XEventstreamtoconstencntframestream etf_inst;


// Macros
#define REG_READ(addr) \
    ({int val;int a=addr; asm volatile ("ldr   %0,[%1]\n" : "=r"(val) : "r"(a)); val;})

#define REG_WRITE(addr,val) \
    ({int v = val; int a = addr; __asm volatile ("str  %1,[%0]\n" :: "r"(a),"r"(v)); v;})

// This function is a patch for the native vivado driver to solve the problem that DDR3 address wire A3 and A4 is swapped on the pcb board.
void ZynqDAVISDDR3Patch()
{
	REG_WRITE(0xf8006000, 0x200);   // Put the DDRC into a reset state.

	REG_WRITE(0xf800602c, 0x30);  // MR3 = 0, MR2 = 0x30 (Be careful: A3 and A4 is swapped.)
	REG_WRITE(0xf8006030, 0x40328); // MR1 = 0x4, MR0 = 0x328 (Be careful: A3 and A4 is swapped.)

//	REG_WRITE(0xf8000008,  0x0000DF0D); // unlock slrc
//
//    REG_WRITE(0xf8000b70, 0x822);  // Reset DCI first
//	REG_WRITE(0xf8000b6c, 0x209);
////	data = REG_READ(0xf8000b74);
////	while((data & 0x0200) != 0)
////	{
////		data = REG_READ(addr);
////	}
//    REG_WRITE(0xf8000b70, 0x823);  // then enable DCI again
//
//    for (int j=0; j<4; j++)
//    {
//      REG_WRITE(0xf8006140 + 4*j, 0x24 );  // always needed
//      REG_WRITE(0xf8006168 + 4*j, 0x2A );  // needed for ddr2 or manual
//
//      REG_WRITE(0xf8006154 + 4*j, 0x20 );  // adjust write dqs
//      REG_WRITE(0xf8006118 + 4*j, 0x28000001);
//      REG_WRITE(0xf800617C + 4*j, 0x48);
//    }
//    REG_WRITE(0xf8006120, 0x28000000);
//    REG_WRITE(0xf8006124, 0x28000000);
//
//
	REG_WRITE(0xf8006000, 0x85);   // Put the DDRC into a reset state.
	// wait mode_st_register to become 0x1;

    // wait a while
//    noop(1000000);

}


int main()
{
	int Status;

    init_platform();

    print("\r\n\r\n\r\nHello USB World\n\r");

    ZynqDAVISDDR3Patch();

	/* Initialize the GPIO driver */
	Status = XGpio_Initialize(&Gpio, XPAR_GPIO_0_DEVICE_ID);
	if (Status != XST_SUCCESS) {
		xil_printf("Gpio Initialization Failed\r\n");
		return XST_FAILURE;
	}

//	XGpio_SetDataDirection(&Gpio, 2, 0xffffffff);     // Input for status monitor
	XGpio_SetDataDirection(&Gpio, 1, 0);              // Output for control

//	// Read register 00h
//	while((XGpio_DiscreteRead(&Gpio, 2) & 0x0f));   // Wait until dir is low, so then we can send data.
//	XGpio_DiscreteWrite(&Gpio, 1, 0xc0800000);       // Send TXD for register read
//	while(!(XGpio_DiscreteRead(&Gpio, 2) & 0x0f));    // Wait until dir is high
//	XGpio_DiscreteWrite(&Gpio, 1, 0x00000000);       // De-assert the data
//
//	// Read register 01h
//	while((XGpio_DiscreteRead(&Gpio, 2) & 0x0f));   // Wait until dir is low, so then we can send data.
//	XGpio_DiscreteWrite(&Gpio, 1, 0xc1800000);       // Send TXD for register read
//	while(!(XGpio_DiscreteRead(&Gpio, 2) & 0x0f));    // Wait until dir is high
//	XGpio_DiscreteWrite(&Gpio, 1, 0x00000000);       // De-assert the data
//
//	// Read register 02h
//	while((XGpio_DiscreteRead(&Gpio, 2) & 0x0f));   // Wait until dir is low, so then we can send data.
//	XGpio_DiscreteWrite(&Gpio, 1, 0xc2800000);       // Send TXD for register read
//	while(!(XGpio_DiscreteRead(&Gpio, 2) & 0x0f));    // Wait until dir is high
//	XGpio_DiscreteWrite(&Gpio, 1, 0x00000000);       // De-assert the data
//
//	// Read register 03h
//	while((XGpio_DiscreteRead(&Gpio, 2) & 0x0f));   // Wait until dir is low, so then we can send data.
//	XGpio_DiscreteWrite(&Gpio, 1, 0xc3800000);       // Send TXD for register read
//	while(!(XGpio_DiscreteRead(&Gpio, 2) & 0x0f));    // Wait until dir is high
//	XGpio_DiscreteWrite(&Gpio, 1, 0x00000000);       // De-assert the data
//
//	// Read register 04h
//	while((XGpio_DiscreteRead(&Gpio, 2) & 0x0f));   // Wait until dir is low, so then we can send data.
//	XGpio_DiscreteWrite(&Gpio, 1, 0xc4800000);       // Send TXD for register read
//	while(!(XGpio_DiscreteRead(&Gpio, 2) & 0x0f));    // Wait until dir is high
//	XGpio_DiscreteWrite(&Gpio, 1, 0x00000000);       // De-assert the data
//
//	// Read register 07h
//	while((XGpio_DiscreteRead(&Gpio, 2) & 0x0f));   // Wait until dir is low, so then we can send data.
//	XGpio_DiscreteWrite(&Gpio, 1, 0xc7800000);       // Send TXD for register read
//	while(!(XGpio_DiscreteRead(&Gpio, 2) & 0x0f));    // Wait until dir is high
//	XGpio_DiscreteWrite(&Gpio, 1, 0x00000000);       // De-assert the data
//
//	// Read register 0ah
//	while((XGpio_DiscreteRead(&Gpio, 2) & 0x0f));   // Wait until dir is low, so then we can send data.
//	XGpio_DiscreteWrite(&Gpio, 1, 0xca800000);       // Send TXD for register read
//	while(!(XGpio_DiscreteRead(&Gpio, 2) & 0x0f));    // Wait until dir is high
//	XGpio_DiscreteWrite(&Gpio, 1, 0x00000000);       // De-assert the data

//	// Write register 04h
//	while((XGpio_DiscreteRead(&Gpio, 2) & 0x0f));   // Wait until dir is low, so then we can send data.
//	XGpio_DiscreteWrite(&Gpio, 1, 0x84800000);       // Send TXD for register write
//	XGpio_DiscreteWrite(&Gpio, 1, 0x00000000);       // De-assert the data
//	XGpio_DiscreteWrite(&Gpio, 1, 0x41800000);       // Send register data
////	while(!((XGpio_DiscreteRead(&Gpio, 2) & 0x0f) >> 4));    // Wait until nxt is high
//	XGpio_DiscreteWrite(&Gpio, 1, 0x00000000);       // De-assert the data

//	// Send data
//	while((XGpio_DiscreteRead(&Gpio, 2) & 0x0f));   // Wait until dir is low, so then we can send data.
//	XGpio_DiscreteWrite(&Gpio, 1, 0x41800000);       // Send TXD including PID data, for example, PID = 1.
//	XGpio_DiscreteWrite(&Gpio, 1, 0x5a800000);       // Send real data
//	XGpio_DiscreteWrite(&Gpio, 1, 0xa5800000);       // Send real data
//	XGpio_DiscreteWrite(&Gpio, 1, 0xaa800000);       // Send real data
//	XGpio_DiscreteWrite(&Gpio, 1, 0x00000000);       // De-assert the data

//	// Send data
//	while((XGpio_DiscreteRead(&Gpio, 2) & 0x0f));   // Wait until dir is low, so then we can send data.
//	XGpio_DiscreteWrite(&Gpio, 1, 0x40800090);       // Send TXD including PID data, for example, PID = 1.
//	XGpio_DiscreteWrite(&Gpio, 1, 0x00000090);       // De-assert the data

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

//    print("VDMA application on davis 7z100 using PMOD VGA\n\r");
//    //Initialize the ETF IP
//    Status = XEventstreamtoconstencntframestream_Initialize(&etf_inst, XPAR_EVENTSTREAMTOCONSTEN_0_DEVICE_ID);
//    if(Status!= XST_SUCCESS)
//    {
//    	xil_printf("ETF configuration failed\r\n");
//    	return(XST_FAILURE);
//    }
//
//    // Configure the ETF
//    uint32_t configEn = XEventstreamtoconstencntframestream_Get_ctrl_V(&etf_inst);
//    uint32_t sliceDuration = XEventstreamtoconstencntframestream_Get_configRegs_V(&etf_inst);
//    configEn = 0x1401; // basic pixel value is 0x14, and enable configuration
//    sliceDuration = 20;
//    XEventstreamtoconstencntframestream_Set_configRegs_V(&etf_inst, sliceDuration);   // Set config enable
//    XEventstreamtoconstencntframestream_Set_ctrl_V(&etf_inst, configEn);
//    XEventstreamtoconstencntframestream_Set_configRegs_V(&etf_inst, sliceDuration);   // Clear config enable
//
//	/* Start of VDMA Configuration */
//    Xil_Out32 (XPAR_AXI_VDMA_0_BASEADDR + 0x30, 0x8B);
//    Xil_Out32(XPAR_AXI_VDMA_0_BASEADDR + 0xAC, 0xD000000);
//    Xil_Out32(XPAR_AXI_VDMA_0_BASEADDR + 0xB0, 0xE000000);
//    Xil_Out32(XPAR_AXI_VDMA_0_BASEADDR + 0xB4, 0xF000000);
//    Xil_Out32 (XPAR_AXI_VDMA_0_BASEADDR + 0xA8, 800*3);
//    Xil_Out32 (XPAR_AXI_VDMA_0_BASEADDR + 0xA4, 800*3);
//    Xil_Out32(XPAR_AXI_VDMA_0_BASEADDR + 0xA0, 600);
//
//    Xil_Out32(XPAR_AXI_VDMA_0_BASEADDR + 0x00, 0x8B);
//    Xil_Out32(XPAR_AXI_VDMA_0_BASEADDR + 0x5C, 0xD000000);
//    Xil_Out32(XPAR_AXI_VDMA_0_BASEADDR + 0x60, 0xE000000);
//    Xil_Out32(XPAR_AXI_VDMA_0_BASEADDR + 0x64, 0xF000000);
//    Xil_Out32 (XPAR_AXI_VDMA_0_BASEADDR + 0x58, 800*3);
//    Xil_Out32 (XPAR_AXI_VDMA_0_BASEADDR + 0x54, 800*3);
//    Xil_Out32 (XPAR_AXI_VDMA_0_BASEADDR + 0x50, 600);
//	/* End of VDMA Configuration */

//	while(1)
//	{
//		if(((XGpio_DiscreteRead(&Gpio, 2) >> 12) & 0xf) != 0)    // We got a new setup frame, stop the system until we prepared the ack data.
//		{
//			tmpGpioData = XGpio_DiscreteRead(&Gpio, 1);
//			tmpGpioData = tmpGpioData & ~0x8; // disable host ack
//			XGpio_DiscreteWrite(&Gpio, 1, tmpGpioData);
//
//			// On one hand, we cannot do too much stuff here since we need to response to the host ASAP.
//			// On the other hand, print is a very time consuming task.
//			// Therefore, we only copy the buffer and will print it later.
//			int setupPacket[8];
//			for(int i = 0; i < 8; i++)
//			{
//				setupPacket[i] = Xil_In32(XPAR_AXI_BRAM_CTRL_0_S_AXI_BASEADDR + 4 * i);
//			}
//
//			xil_printf("\r\nSetup request index: %d\r\n", XGpio_DiscreteRead(&Gpio, 2) >> 16);
//			xil_printf("Received data : ");
//			for(int i = 0; i < 8; i++)
//			{
//				xil_printf("0x%x    ", setupPacket[i]);
//			}
//			xil_printf("\r\n");
//
//			tmpGpioData = XGpio_DiscreteRead(&Gpio, 1);
//			tmpGpioData = tmpGpioData | 0x8; // enable host ack
//			XGpio_DiscreteWrite(&Gpio, 1, tmpGpioData);
//
//
//		}
//	}

    cleanup_platform();
    return 0;
}
