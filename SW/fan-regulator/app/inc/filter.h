/*!****************************************************************************
 * @file    filter.h
 * @author  4eef
 * @version V1.0
 * @date    November 18, 2023
 * @brief   
 */

#ifndef filter_H
#define	filter_H

/*!****************************************************************************
 * Include
 */
#include <stdint.h>
#include <stdlib.h>
#include "app_errors.h"

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
eAppError filter_init(fltrParam_type *p);
eAppError filter_process(fltrParam_type *p, int16_t x, int16_t *pOut);

#endif //filter_H
/***************** (C) COPYRIGHT ************** END OF FILE ******** 4eef ****/
