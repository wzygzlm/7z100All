/*
 * DVSconfig.h
 *
 *  Created on: May 8, 2021
 *      Author: Min
 */

#ifndef SRC_DVSCONFIG_H_
#define SRC_DVSCONFIG_H_

#include "xparameters.h"	/* EDK generated parameters */
#include "xspips.h"		/* SPI device driver */

#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"
/************************** Constant Definitions *****************************/

/*
 * The following constants map to the XPAR parameters created in the
 * xparameters.h file. They are defined here such that a user can easily
 * change all the needed parameters in one place.
 */
#define SPI_DEVICE_ID		XPAR_XSPIPS_0_DEVICE_ID

#define MODULE_ADDR_OFFSET		0
#define PARAM_ADDR_OFFSET	1

#define OVERHEAD_SIZE		2
#define DATA_SIZE		4

#define BUFFER_SIZE		DATA_SIZE + OVERHEAD_SIZE

/*
 * The following constant defines the slave select signal that is used to
 * to select the EEPROM device on the SPI bus, this signal is typically
 * connected to the chip select of the device
 */
#define DVS_SPI_SELECT	0x01
/**************************** Type Definitions *******************************/

typedef u8 SPIBuffer[BUFFER_SIZE];


// Macros
#define REG_READ(addr) \
    ({int val;int a=addr; asm volatile ("ldr   %0,[%1]\n" : "=r"(val) : "r"(a)); val;})

#define REG_WRITE(addr,val) \
    ({int v = val; int a = addr; __asm volatile ("str  %1,[%0]\n" :: "r"(a),"r"(v)); v;})

int dvsSPIInit(XSpiPs *SpiInstancePtr, u16 SpiDeviceId);
int PreferencesListSetup (XSpiPs *SpiInstancePtr);

#endif /* SRC_DVSCONFIG_H_ */
