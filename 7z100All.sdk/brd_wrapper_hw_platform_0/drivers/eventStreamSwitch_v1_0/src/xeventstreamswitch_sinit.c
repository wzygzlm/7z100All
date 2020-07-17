// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.1
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ==============================================================

#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xeventstreamswitch.h"

extern XEventstreamswitch_Config XEventstreamswitch_ConfigTable[];

XEventstreamswitch_Config *XEventstreamswitch_LookupConfig(u16 DeviceId) {
	XEventstreamswitch_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XEVENTSTREAMSWITCH_NUM_INSTANCES; Index++) {
		if (XEventstreamswitch_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XEventstreamswitch_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XEventstreamswitch_Initialize(XEventstreamswitch *InstancePtr, u16 DeviceId) {
	XEventstreamswitch_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XEventstreamswitch_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XEventstreamswitch_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

