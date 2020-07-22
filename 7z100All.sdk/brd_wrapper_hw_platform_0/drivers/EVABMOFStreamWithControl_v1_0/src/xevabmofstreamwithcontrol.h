// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.1
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ==============================================================

#ifndef XEVABMOFSTREAMWITHCONTROL_H
#define XEVABMOFSTREAMWITHCONTROL_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xevabmofstreamwithcontrol_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
#else
typedef struct {
    u16 DeviceId;
    u32 Config_BaseAddress;
} XEvabmofstreamwithcontrol_Config;
#endif

typedef struct {
    u32 Config_BaseAddress;
    u32 IsReady;
} XEvabmofstreamwithcontrol;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XEvabmofstreamwithcontrol_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XEvabmofstreamwithcontrol_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XEvabmofstreamwithcontrol_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XEvabmofstreamwithcontrol_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
int XEvabmofstreamwithcontrol_Initialize(XEvabmofstreamwithcontrol *InstancePtr, u16 DeviceId);
XEvabmofstreamwithcontrol_Config* XEvabmofstreamwithcontrol_LookupConfig(u16 DeviceId);
int XEvabmofstreamwithcontrol_CfgInitialize(XEvabmofstreamwithcontrol *InstancePtr, XEvabmofstreamwithcontrol_Config *ConfigPtr);
#else
int XEvabmofstreamwithcontrol_Initialize(XEvabmofstreamwithcontrol *InstancePtr, const char* InstanceName);
int XEvabmofstreamwithcontrol_Release(XEvabmofstreamwithcontrol *InstancePtr);
#endif


void XEvabmofstreamwithcontrol_Set_config_V(XEvabmofstreamwithcontrol *InstancePtr, u32 Data);
u32 XEvabmofstreamwithcontrol_Get_config_V(XEvabmofstreamwithcontrol *InstancePtr);
u32 XEvabmofstreamwithcontrol_Get_status_V(XEvabmofstreamwithcontrol *InstancePtr);
u32 XEvabmofstreamwithcontrol_Get_status_V_vld(XEvabmofstreamwithcontrol *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
