/*!****************************************************************************
* @file    mcu_control.c
* @author  4eef
* @version V1.0
* @date    15.12.2020, 4eef
* @brief   Microcontroller unit general control mechanisms
*/

#ifndef mcu_control_H
#define mcu_control_H

/*!****************************************************************************
* Include
*/
#include <stdbool.h>
#include <stdint.h>
#include <stdlib.h>
#include "errors.h"
#include "hw_wrap.h"

/*!****************************************************************************
* User define
*/

/*!****************************************************************************
* User typedef
*/

/*!****************************************************************************
* Prototypes for the functions
*/
eAppError mcu_control_init(bool *pIsSysRst);
eAppError mcu_control_rstSysCtrl(bool isRstNeeded);
eAppError mcu_control_cycleSync(void);

#endif //mcu_control_H
/***************** (C) COPYRIGHT ************** END OF FILE ******** 4eef ****/