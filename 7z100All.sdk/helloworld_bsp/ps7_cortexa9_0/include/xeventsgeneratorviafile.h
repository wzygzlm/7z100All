// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.1
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ==============================================================

#ifndef XEVENTSGENERATORVIAFILE_H
#define XEVENTSGENERATORVIAFILE_H

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
#include "xeventsgeneratorviafile_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
#else
typedef struct {
    u16 DeviceId;
    u32 Config_BaseAddress;
} XEventsgeneratorviafile_Config;
#endif

typedef struct {
    u32 Config_BaseAddress;
    u32 IsReady;
} XEventsgeneratorviafile;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XEventsgeneratorviafile_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XEventsgeneratorviafile_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XEventsgeneratorviafile_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XEventsgeneratorviafile_ReadReg(BaseAddress, RegOffset) \
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
int XEventsgeneratorviafile_Initialize(XEventsgeneratorviafile *InstancePtr, u16 DeviceId);
XEventsgeneratorviafile_Config* XEventsgeneratorviafile_LookupConfig(u16 DeviceId);
int XEventsgeneratorviafile_CfgInitialize(XEventsgeneratorviafile *InstancePtr, XEventsgeneratorviafile_Config *ConfigPtr);
#else
int XEventsgeneratorviafile_Initialize(XEventsgeneratorviafile *InstancePtr, const char* InstanceName);
int XEventsgeneratorviafile_Release(XEventsgeneratorviafile *InstancePtr);
#endif


void XEventsgeneratorviafile_Set_input_V(XEventsgeneratorviafile *InstancePtr, u64 Data);
u64 XEventsgeneratorviafile_Get_input_V(XEventsgeneratorviafile *InstancePtr);
void XEventsgeneratorviafile_Set_input_V_vld(XEventsgeneratorviafile *InstancePtr);
u32 XEventsgeneratorviafile_Get_input_V_vld(XEventsgeneratorviafile *InstancePtr);
void XEventsgeneratorviafile_Set_counterIn_V(XEventsgeneratorviafile *InstancePtr, u64 Data);
u64 XEventsgeneratorviafile_Get_counterIn_V(XEventsgeneratorviafile *InstancePtr);
u32 XEventsgeneratorviafile_Get_status_V(XEventsgeneratorviafile *InstancePtr);
u32 XEventsgeneratorviafile_Get_status_V_vld(XEventsgeneratorviafile *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
