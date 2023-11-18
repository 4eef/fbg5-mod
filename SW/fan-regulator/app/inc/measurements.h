/*!****************************************************************************
* @file    measurements.h
* @author  4eef
* @version V1.0
* @date    November 18, 2023
* @brief   Measurements and filtration application routines
*/

#ifndef measurements_H
#define measurements_H

/*!****************************************************************************
* Include
*/
#include <stdint.h>
#include <stdlib.h>
#include "app_errors.h"
#include "filter.h"
#include "hw_wrap.h"

/*!****************************************************************************
* Prototypes for the functions
*/
eAppError measurements_init(void);
eAppError measurements_getTemp(int16_t *pTemp);

#endif //measurements_H
/***************** (C) COPYRIGHT ************** END OF FILE ******** 4eef ****/