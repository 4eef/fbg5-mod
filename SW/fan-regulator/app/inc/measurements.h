/*!****************************************************************************
* @file    measurements.h
* @author  4eef
* @version V1.0
* @date    22.12.2019, 4eef
* @brief   Power mode and output state selector module
*/

#ifndef measurements_H
#define measurements_H

/*!****************************************************************************
* Include
*/
#include <stdbool.h>
#include <stdint.h>
#include <stdlib.h>
#include "app_errors.h"
#include "hw_wrap.h"

/*!****************************************************************************
* User define
*/
#define FILTER_A_MIN                        61165                               // http://we.easyelectronics.ru/Theory/chestno-prostoy-cifrovoy-filtr.html
#define FILTER_A_MAX                        63603
#define FILTER_K_DIV                        10
#define FILTER_A                            (FILTER_A_MIN + ((FILTER_A_MAX - FILTER_A_MIN) / FILTER_K_DIV))
#define FILTER_16BIT                        65536
#define FILTER_RESOLUTION                   16

/*!****************************************************************************
* User typedef
*/
typedef struct{
    int16_t     x;
    int16_t     y;
    int32_t     z;
    int16_t     k;
    int16_t     Nb;
}fltrParam_type;

/*!****************************************************************************
* Prototypes for the functions
*/
eAppError measurements_init(void);
eAppError measurements_getTemp(int16_t *pTemp);

#endif //measurements_H
/***************** (C) COPYRIGHT ************** END OF FILE ******** 4eef ****/