/*!****************************************************************************
* @file    watchdog.h
* @author  4eef
* @version V1.0
* @date    28.12.2020, 4eef
* @brief   Watchdog control and reset mechanisms
*/
#ifndef watchdog_H
#define watchdog_H

/*!****************************************************************************
* Include
*/
#include <avr/io.h>
#include <avr/wdt.h>
#include <stdint.h>
#include <stdbool.h>
#include <stdlib.h>
#include "drv_errors.h"

/*!****************************************************************************
* Prototypes for the functions
*/
eDrvError watchdog_init(WDT_PERIOD_t period, WDT_WINDOW_t window);
eDrvError watchdog_refresh(void);

#endif //watchdog_H
/***************** (C) COPYRIGHT ************** END OF FILE ******** 4eef ****/
