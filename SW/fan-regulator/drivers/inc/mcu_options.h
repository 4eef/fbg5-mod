/*!****************************************************************************
* @file    mcu_options.c
* @author  4eef
* @version V1.0
* @date    19.11.2020, 4eef
* @brief   Microcontroller unit HW settings and options
*/

#ifndef mcu_options_H
#define	mcu_options_H

/*!****************************************************************************
* Include
*/
#include <avr/io.h>
#include <stdint.h>
#include <stdbool.h>
#include <stdlib.h>
#include "drv_errors.h"

/*!****************************************************************************
* Prototypes for the functions
*/
eDrvError mcu_options_init(void);
eDrvError mcu_options_isPorRstSet(bool *pPorRst);
eDrvError mcu_options_isSwRstEngd(bool *pSwRst);
eDrvError mcu_options_isWdtRstEngd(bool *pWdtRst);
eDrvError mcu_options_isExtRstEngd(bool *pExtRst);
eDrvError mcu_options_resetMcu(void);

#endif	//mcu_options_H
/***************** (C) COPYRIGHT ************** END OF FILE ******** 4eef ****/
