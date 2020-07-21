// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.1
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ==============================================================

#ifndef XEVENTSTREAMDUPLICATE_H
#define XEVENTSTREAMDUPLICATE_H

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
#include "xeventstreamduplicate_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
#else
typedef struct {
    u16 DeviceId;
    u32 Config_BaseAddress;
} XEventstreamduplicate_Config;
#endif

typedef struct {
    u32 Config_BaseAddress;
    u32 IsReady;
} XEventstreamduplicate;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XEventstreamduplicate_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XEventstreamduplicate_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XEventstreamduplicate_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XEventstreamduplicate_ReadReg(BaseAddress, RegOffset) \
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
int XEventstreamduplicate_Initialize(XEventstreamduplicate *InstancePtr, u16 DeviceId);
XEventstreamduplicate_Config* XEventstreamduplicate_LookupConfig(u16 DeviceId);
int XEventstreamduplicate_CfgInitialize(XEventstreamduplicate *InstancePtr, XEventstreamduplicate_Config *ConfigPtr);
#else
int XEventstreamduplicate_Initialize(XEventstreamduplicate *InstancePtr, const char* InstanceName);
int XEventstreamduplicate_Release(XEventstreamduplicate *InstancePtr);
#endif


void XEventstreamduplicate_Set_config_V(XEventstreamduplicate *InstancePtr, u32 Data);
u32 XEventstreamduplicate_Get_config_V(XEventstreamduplicate *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif