/*
 * ramn_screen_canlog.h
 ******************************************************************************
 * @attention
 *
 * <h2><center>&copy; Copyright (c) 2025 TOYOTA MOTOR CORPORATION.
 * ALL RIGHTS RESERVED.</center></h2>
 *
 * This software component is licensed by TOYOTA MOTOR CORPORATION under BSD 3-Clause license,
 * the "License"; You may not use this file except in compliance with the
 * License. You may obtain a copy of the License at:
 *                        opensource.org/licenses/BSD-3-Clause
 *
 ******************************************************************************
 */

// This module implements a "candump-like" screen

#ifndef INC_RAMN_SCREEN_CANLOG_H_
#define INC_RAMN_SCREEN_CANLOG_H_

#include "main.h"

#ifdef ENABLE_SCREEN

#include "ramn_screen_utils.h"

#define SCREEN_BUFFER_MESSAGE_COUNT 18
#define CAN_MESSAGE_BUFFER_SIZE 13
#define MAX_BUFFER_BYTES (CAN_RX_BUFFER_SIZE/2) // Screen will display "overflow" and give up displaying if CAN RX buffer goes above this threshold
#define CANVAS_OFFSET SCREEN_HEADER_SIZE

// Struct to save a CAN message in the screen memory (using less size than HAL library)
typedef struct {
    uint32_t identifier;
    uint8_t data[8];
    uint8_t payload_size;
} CAN_Message;

// Circular buffer to store CAN messages
typedef struct {
    CAN_Message messages[CAN_MESSAGE_BUFFER_SIZE];
    uint8_t head;
    uint8_t count;
} CAN_MessageBuffer;

extern RAMNScreen_t ScreenCANLog;

void RAMN_ScreenCANLog_ProcessRxCANMessage(const FDCAN_RxHeaderTypeDef* pHeader, const uint8_t* data, uint32_t tick);

#endif

#endif
