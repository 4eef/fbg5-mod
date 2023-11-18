/*!****************************************************************************
* @file    delay.h
* @author  4eef
* @version V1.0
* @date    15.12.2020, 4eef
* @brief   General delay functions
*/

#ifndef delay_H
#define delay_H

/*!****************************************************************************
* Include
*/
#include <stdbool.h>
#include <stdint.h>
#include <stdlib.h>
#include "app_errors.h"
#include "hw_wrap.h"

/*!****************************************************************************
* Prototypes for the functions
*/
eAppError delay_us(uint16_t time);
eAppError delay_ms(uint16_t time);

#endif //delay_H
/***************** (C) COPYRIGHT ************** END OF FILE ******** 4eef ****/