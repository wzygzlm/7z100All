#include "DVSConfig.h"

/*****************************************************************************/
/**
*
* This function reads from the SPI interface.
*
* @param	SpiPtr is a pointer to the SPI driver component to use.
* @param	Address contains the address to read data from in the EEPROM.
* @param	ByteCount contains the number of bytes to read.
* @param	Buffer is a buffer to read the data into.
*
* @return	None.
*
* @note		None.
*
******************************************************************************/
void dvsSPIRead(XSpiPs *SpiPtr, uint8_t moduleAddr, uint8_t paramAddr, uint32_t *data)
{
	SPIBuffer Buffer;
	/*
	 * Setup the write command with the specified address and data
	 */
	Buffer[MODULE_ADDR_OFFSET] = (moduleAddr & 0x7f) + 0x80;  // Read, set the MSB to 0;
	Buffer[PARAM_ADDR_OFFSET]  = paramAddr;

	/*
	 * Send the read command to the EEPROM to read the specified number
	 * of bytes from the EEPROM, send the read command and address and
	 * receive the specified number of bytes of data in the data buffer
	 */
	XSpiPs_PolledTransfer(SpiPtr, Buffer, Buffer,
				DATA_SIZE + OVERHEAD_SIZE);

	*data = 0;
	for(int i = 0; i < 4; i++)
	{
		int shiftBitNum = 8 * (3 - i);
		*data += ((Buffer[OVERHEAD_SIZE + i]) << (shiftBitNum));
	}
}

int dvsSPIWrite(XSpiPs *SpiPtr, uint8_t moduleAddr, uint8_t paramAddr, int32_t data)
{
	SPIBuffer Buffer;

	/*
	 * Setup the write command with the specified address and data
	 */
	Buffer[MODULE_ADDR_OFFSET] = (moduleAddr & 0x7f);      // Write, set the MSB to 0;
	Buffer[PARAM_ADDR_OFFSET]  = paramAddr;

	for(int i = 0; i < 4; i++)
	{
		int shiftBitNum = 8 * (3 - i);
		Buffer[OVERHEAD_SIZE + i] = ((data >> (shiftBitNum)) & 0xff);
	}

	/*
	 * Send the read command to the EEPROM to read the specified number
	 * of bytes from the EEPROM, send the read command and address and
	 * receive the specified number of bytes of data in the data buffer
	 */
	XSpiPs_PolledTransfer(SpiPtr, Buffer, NULL,
				DATA_SIZE + OVERHEAD_SIZE);

	uint32_t tmpData;
	dvsSPIRead(SpiPtr, moduleAddr, paramAddr, &tmpData);
	if(tmpData != data)
	{
		return XST_FAILURE;
	}
	else
	{
		return XST_SUCCESS;
	}
}


/*****************************************************************************/
/**
*
* The purpose of this function is to illustrate how to use the XSpiPs
* device driver in polled mode. This test writes and reads data from a
* serial EEPROM. The serial EEPROM part must be present in the hardware
* to use this example.
*
* @param	SpiInstancePtr is a pointer to the Spi Instance.
* @param	SpiDeviceId is the Device Id of Spi.
*
* @return	XST_SUCCESS if successful else XST_FAILURE.
*
* @note
*
* This function calls functions which contain loops that may be infinite
* if interrupts are not working such that it may not return. If the device
* slave select is not correct and the device is not responding on bus it will
* read a status of 0xFF for the status register as the bus is pulled up.
*
*****************************************************************************/
int dvsSPIInit(XSpiPs *SpiInstancePtr, u16 SpiDeviceId)
{
	int Status;
	XSpiPs_Config *SpiConfig;

	/*
	 * Initialize the SPI driver so that it's ready to use
	 */
	SpiConfig = XSpiPs_LookupConfig(SpiDeviceId);
	if (NULL == SpiConfig) {
		return XST_FAILURE;
	}

	Status = XSpiPs_CfgInitialize(SpiInstancePtr, SpiConfig,
				       SpiConfig->BaseAddress);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	/*
	 * Perform a self-test to check hardware build
	 */
	Status = XSpiPs_SelfTest(SpiInstancePtr);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	/*
	 * Set the Spi device as a master. External loopback is required.
	 */
	XSpiPs_SetOptions(SpiInstancePtr, XSPIPS_MASTER_OPTION |
			   XSPIPS_FORCE_SSELECT_OPTION);

	XSpiPs_SetClkPrescaler(SpiInstancePtr, XSPIPS_CLK_PRESCALE_32);


	/*
	 * Assert the DVS SPI select
	 */
	XSpiPs_SetSlaveSelect(SpiInstancePtr, DVS_SPI_SELECT);

	uint32_t retData;

//	dvsSPIRead(SpiInstancePtr, 0x01, 0x3, &retData);
//	Status = dvsSPIWrite(SpiInstancePtr, 0x01, 0x3, 1);
//	if (Status != XST_SUCCESS) {
//		return XST_FAILURE;
//	}
//	dvsSPIWrite(SpiInstancePtr, 0x00, 0x0, 1);
//	if (Status != XST_SUCCESS) {
//		return XST_FAILURE;
//	}
//	dvsSPIWrite(SpiInstancePtr, 0x00, 0x1, 1);
//	if (Status != XST_SUCCESS) {
//		return XST_FAILURE;
//	}
//	dvsSPIWrite(SpiInstancePtr, 0x00, 0x3, 1);
//	if (Status != XST_SUCCESS) {
//		return XST_FAILURE;
//	}
//	dvsSPIWrite(SpiInstancePtr, 0x00, 0x4, 1);
//	if (Status != XST_SUCCESS) {
//		return XST_FAILURE;
//	}
//	dvsSPIWrite(SpiInstancePtr, 0x00, 0x5, 1);
//	if (Status != XST_SUCCESS) {
//		return XST_FAILURE;
//	}
//	dvsSPIRead(SpiInstancePtr, 0x01, 0x3, &retData);

	// Check logic version and chip id
	dvsSPIRead(SpiInstancePtr, 0x06, 0x0, &retData);
	dvsSPIRead(SpiInstancePtr, 0x06, 0x1, &retData);

	dvsSPIRead(SpiInstancePtr, 0x01, 0x0, &retData);
	dvsSPIRead(SpiInstancePtr, 0x01, 0x1, &retData);


	return XST_SUCCESS;
}


// Set up the initial Multiplexer settings for Davis Fx3 motherboard + Tower wafer chips
static int MUXInitialization (XSpiPs *SpiInstancePtr) {
	int status;
	uint8_t moduleAddr[5] = {0,0,0,0,0};
	uint8_t paramAddr[5] = {0,1,3,4,5};
	int value[5] = {1,1,1,1,1};

	for (uint8_t a = 0; a < 5; a = a + 1 ) {
		status = dvsSPIWrite(SpiInstancePtr, moduleAddr[a], paramAddr[a], value[a]);
		if (status != XST_SUCCESS) {
			return XST_FAILURE;
		}
	}
	return XST_SUCCESS;
}


// Set up the initial DVS settings for Davis Fx3 motherboard + Tower wafer chips
static int DVSInitialization (XSpiPs *SpiInstancePtr) {
	int status;
	uint8_t moduleAddr = 1;
	uint8_t paramAddr[12] = {3,4,5};
	int value[12] = {1,0,0};

	for (uint8_t a = 0; a < 3; a = a + 1 ) {
		status = dvsSPIWrite(SpiInstancePtr, moduleAddr, paramAddr[a], value[a]);
		if (status != XST_SUCCESS) {
			return XST_FAILURE;
		}
	}
	return XST_SUCCESS;
}


// Set up the initial APS settings for Davis Fx3 motherboard + Tower wafer chips
static int APSInitialization (XSpiPs *SpiInstancePtr) {
	int status;
	uint8_t moduleAddr[6] = {2,2,5,2,2,2};
	uint8_t paramAddr[6] = {4,5,142,7,12,13};
	int value[6] = {1,1,1,1,302400,3024000};

	for (uint8_t a = 0; a < 6; a = a + 1 ) {
		status = dvsSPIWrite(SpiInstancePtr, moduleAddr[a], paramAddr[a], value[a]);
		if (status != XST_SUCCESS) {
			return XST_FAILURE;
		}
	}
}


// Set up the initial IMU settings for Davis Fx3 motherboard + Tower wafer chips
static int IMUInitialization (XSpiPs *SpiInstancePtr) {
	int status;
	uint8_t moduleAddr = 3;
	uint8_t paramAddr[7] = {2,3,4,5,6,7,10};
	int value[7] = {0,0,0,0,1,2,2};

	for (uint8_t a = 0; a < 7; a = a + 1 ) {
		status = dvsSPIWrite(SpiInstancePtr, moduleAddr, paramAddr[a], value[a]);
		if (status != XST_SUCCESS) {
			return XST_FAILURE;
		}
	}
	return XST_SUCCESS;
}


// Set up the initial External Input settings for Davis Fx3 motherboard + Tower wafer chips
static int ExternalInputInitialization (XSpiPs *SpiInstancePtr) {
	int status;
	uint8_t moduleAddr = 4;
	uint8_t paramAddr[6] = {0,1,2,3,4,5};
	int value[6] = {0,0,0,1,1,120};

	for (uint8_t a = 0; a < 6; a = a + 1 ) {
		status = dvsSPIWrite(SpiInstancePtr, moduleAddr, paramAddr[a], value[a]);
		if (status != XST_SUCCESS) {
			return XST_FAILURE;
		}
	}
	return XST_SUCCESS;
}

static int chipBiasCurrentConfig(XSpiPs *SpiInstancePtr) {
	int status;
	uint8_t moduleAddr = 5;
	int value[37] = {0x19b,0x195,0x1e0,0x1c1,0x1d5,
					 0, 0, 0,
					 0x5a4f,0x7d7e,0x427f,0x5fff,0x400f,
					 0x690f,0x23ad,0x110d,0x419d,0x614d,
					 0x6dbf,0x514d,0x1f,0x63cd,0x531f,
					 0x65bf,0x450d,0x798d,0x5fff,0x5fff,
					 0,0,0,0,0,0,
					 0x5fef,
					 0x8410,0x8410};

	for (int a = 0; a < 37; a = a + 1 )
	{
		if(a < 5 || (a > 7 && a < 28) || a > 33)
		{
			status = dvsSPIWrite(SpiInstancePtr, moduleAddr, a, value[a]);
			if (status != XST_SUCCESS) {
				return XST_FAILURE;
			}
		}
	}

	for(int a = 0; a < 37; a++)
	{
		if(a < 5 || (a > 7 && a <28) || a > 33)
		{
			int retData;
			dvsSPIRead(SpiInstancePtr, moduleAddr, a, &retData);
			printf("New davis346 bias values --- Bias%d is 0x%x.\n\r", a, retData);
		}
	}

	return XST_SUCCESS;
}

// Set up the Analog & Digital MUX and the CalibNeuron.
static int ChipDiagnosticChainInitialization (XSpiPs *SpiInstancePtr) {
	int status;
	uint8_t moduleAddr = 5;
	uint8_t paramAddr[15] = {128,129,130,131,132,133,134,135,136,137,138,140,141,143,144};
	int value[15] = {0,0,0,0,0,0,0,0,1,0,1,0,0,1,0};

	for (uint8_t a = 0; a < 15; a = a + 1 ) {
		status = dvsSPIWrite(SpiInstancePtr, moduleAddr, paramAddr[a], value[a]);
		if (status != XST_SUCCESS) {
			return XST_FAILURE;
		}
	}
	return XST_SUCCESS;
}


//set the Preferences List configurations
int PreferencesListSetup (XSpiPs *SpiInstancePtr) {
	int status;
	//Enable the chip's bias generator, powering it up.
	status = MUXInitialization(SpiInstancePtr);
	if (status != XST_SUCCESS) {
		return XST_FAILURE;
	}
	//set up the DVS configurations.
	status = DVSInitialization(SpiInstancePtr);
	if (status != XST_SUCCESS) {
		return XST_FAILURE;
	}
//	//set up the APS configurations.
//	status = APSInitialization(SpiInstancePtr);
//	if (status != XST_SUCCESS) {
//		return XST_FAILURE;
//
//	//set up the IMU configurations.
//	status = IMUInitialization(SpiInstancePtr);
//	if (status != XST_SUCCESS) {
//		return XST_FAILURE;
//	}
//	//set up the External Input configurations.
//	status = ExternalInputInitialization(SpiInstancePtr);
//	if (status != XST_SUCCESS) {
//		return XST_FAILURE;
//	}
	//Set up the Analog & Digital MUX and the CalibNeuron.
	chipBiasCurrentConfig(SpiInstancePtr);
	status = ChipDiagnosticChainInitialization(SpiInstancePtr);
	if (status != XST_SUCCESS) {
		return XST_FAILURE;
	}
//	while(1)
//	{
//		int tmpData;
//		dvsSPIRead(SpiInstancePtr, 5, 8, &tmpData);
//		if(tmpData >= 0xa) tmpData = 0;
//		status = dvsSPIWrite(SpiInstancePtr, 5, 8, tmpData + 1);
//		if (status != XST_SUCCESS) {
//			return XST_FAILURE;
//		}
//	}

	return XST_SUCCESS;
}

// Set up the initial chip biases for Davis Fx3 motherboard + Tower wafer chips
static int ShiftedSourceInitialization (XSpiPs *SpiInstancePtr) {
	int status;
	uint8_t moduleAddr = 5;
	uint8_t paramAddr[2] = {35,36};
	int value[2] = {33808,33808};

	for (uint8_t a = 0; a < 2; a = a + 1 ) {
		status = dvsSPIWrite(SpiInstancePtr, moduleAddr, paramAddr[a], value[a]);
		if (status != XST_SUCCESS) {
			return XST_FAILURE;
		}
	}
	return XST_SUCCESS;
}

// Set up the initial chip biases for Davis Fx3 motherboard + Tower wafer chips
static int VDACBiasInitialization (XSpiPs *SpiInstancePtr) {
	int status;
	uint8_t moduleAddr = 5;
	uint8_t paramAddr[5] = {0,1,2,3,4};
	int value[5] = {411,405,478,449,469};

	for (uint8_t a = 0; a < 5; a = a + 1 ) {
		status = dvsSPIWrite(SpiInstancePtr, moduleAddr, paramAddr[a], value[a]);
		if (status != XST_SUCCESS) {
			return XST_FAILURE;
		}
	}
	return XST_SUCCESS;
}


// Set up the initial chip biases for Davis Fx3 motherboard + Tower wafer chips
static int CoarseFineBiasInitialization (XSpiPs *SpiInstancePtr) {
	int status;
	uint8_t moduleAddr = 5;
	uint8_t paramAddr[21] = {8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,34};
//	int value[21] = {23119,32127,17023,24575,16399,22559,9133,4365,16797,24909,28095,20813,31,25549,21279,26047,17677,31117,24575,24575,24559};
	int value[21] = {23119,32127,17023,24575,16399,22559,9133,4365,16797,24909,28095,20813,31,25549,21279,26047,17677,31117,24575,24575,24559};

	for (uint8_t a = 0; a < 21; a = a + 1 ) {
		status = dvsSPIWrite(SpiInstancePtr, moduleAddr, paramAddr[a], value[a]);
		if (status != XST_SUCCESS) {
			return XST_FAILURE;
		}
	}
	return XST_SUCCESS;
}


// Set up the initial chip biases for Davis Fx3 motherboard + Tower wafer chips
static int BiasInitialization (XSpiPs *SpiInstancePtr) {
	int status;
	status = ShiftedSourceInitialization(SpiInstancePtr);
	if (status != XST_SUCCESS) {
		return XST_FAILURE;
	}
	status = VDACBiasInitialization(SpiInstancePtr);
	if (status != XST_SUCCESS) {
		return XST_FAILURE;
	}
	status = CoarseFineBiasInitialization(SpiInstancePtr);
	if (status != XST_SUCCESS) {
		return XST_FAILURE;
	}
	return XST_SUCCESS;
}
