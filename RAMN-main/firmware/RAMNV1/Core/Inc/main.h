/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.h
  * @brief          : Header for main.c file.
  *                   This file contains the common defines of the application.
  ******************************************************************************
  * @attention
  *
  * <h2><center>&copy; Copyright (c) 2021 STMicroelectronics.
  * All rights reserved.</center></h2>
  * <h2><center>&copy; Copyright (c) 2025 TOYOTA MOTOR CORPORATION.
  * ALL RIGHTS RESERVED.</center></h2>
  *
  * This software component is licensed by ST under BSD 3-Clause license,
  * the "License"; You may not use this file except in compliance with the
  * License. You may obtain a copy of the License at:
  *                        opensource.org/licenses/BSD-3-Clause
  *
  ******************************************************************************
  */
/* USER CODE END Header */

/* Define to prevent recursive inclusion -------------------------------------*/
#ifndef __MAIN_H
#define __MAIN_H

#ifdef __cplusplus
extern "C" {
#endif

/* Includes ------------------------------------------------------------------*/
#include "stm32l5xx_hal.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */
#include "ramn_config.h"
#include "ramn_utils.h"
#include "ramn_vehicle_specific.h"
#include "cmsis_os.h"
#include "queue.h"

#ifdef ENABLE_GSUSB
#include "gs_usb_fdcan.h"
#endif

/* USER CODE END Includes */

/* Exported types ------------------------------------------------------------*/
/* USER CODE BEGIN ET */
// Enum for joystick events
typedef enum {
    JOYSTICK_EVENT_LEFT_PRESSED,
    JOYSTICK_EVENT_RIGHT_PRESSED,
    JOYSTICK_EVENT_LEFT_RELEASED,
    JOYSTICK_EVENT_RIGHT_RELEASED,
    JOYSTICK_EVENT_UP_PRESSED,
    JOYSTICK_EVENT_DOWN_PRESSED,
    JOYSTICK_EVENT_CENTER_PRESSED,
    JOYSTICK_EVENT_UP_RELEASED,
    JOYSTICK_EVENT_DOWN_RELEASED,
    JOYSTICK_EVENT_CENTER_RELEASED,
    JOYSTICK_EVENT_NONE,
	JOYSTICK_EVENT_INVALID,
} JoystickEventType;
/* USER CODE END ET */

/* Exported constants --------------------------------------------------------*/
/* USER CODE BEGIN EC */

/* USER CODE END EC */

/* Exported macro ------------------------------------------------------------*/
/* USER CODE BEGIN EM */

/* USER CODE END EM */

/* Exported functions prototypes ---------------------------------------------*/
void Error_Handler(void);

/* USER CODE BEGIN EFP */
#ifdef ENABLE_GSUSB
extern osMessageQueueId_t RAMN_GSUSB_SendQueueHandle;
extern osMessageQueueId_t RAMN_GSUSB_RecvQueueHandle;
extern osMessageQueueId_t RAMN_GSUSB_PoolQueueHandle;
#endif
extern FDCAN_HandleTypeDef hfdcan1;
/* USER CODE END EFP */

/* Private defines -----------------------------------------------------------*/
#define ECUC_EN_Pin GPIO_PIN_13
#define ECUC_EN_GPIO_Port GPIOC
#define ECUC_BOOT0_Pin GPIO_PIN_14
#define ECUC_BOOT0_GPIO_Port GPIOC
#define ECUD_BOOT0_Pin GPIO_PIN_15
#define ECUD_BOOT0_GPIO_Port GPIOC
#define ECUD_EN_Pin GPIO_PIN_0
#define ECUD_EN_GPIO_Port GPIOA
#define LCD_nCS_Pin GPIO_PIN_2
#define LCD_nCS_GPIO_Port GPIOB
#define LCD_DC_Pin GPIO_PIN_12
#define LCD_DC_GPIO_Port GPIOB
#define Other_nCS_Pin GPIO_PIN_8
#define Other_nCS_GPIO_Port GPIOA
#define ECUB_EN_Pin GPIO_PIN_5
#define ECUB_EN_GPIO_Port GPIOB
#define FDCAN1_STB_Pin GPIO_PIN_6
#define FDCAN1_STB_GPIO_Port GPIOB
#define ECUB_BOOT0_Pin GPIO_PIN_7
#define ECUB_BOOT0_GPIO_Port GPIOB
#define SELF_BOOT0_Pin GPIO_PIN_3
#define SELF_BOOT0_GPIO_Port GPIOH

/* USER CODE BEGIN Private defines */
#define HARDWARE_UNIQUE_ID_ADDRESS ((uint32_t*)0x0BFA0590)
/* USER CODE END Private defines */

#ifdef __cplusplus
}
#endif

#endif /* __MAIN_H */
