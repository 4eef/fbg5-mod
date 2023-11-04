/*!****************************************************************************
* @file    watchdog.c
* @author  4eef
* @version V1.0
* @date    28.12.2020, 4eef
* @brief   Watchdog control and reset mechanisms
*/

/*!****************************************************************************
* Include
*/
#include "watchdog.h"

/*!****************************************************************************
* @brief    Initialize watchdog and start counting
* @param    period - period to reset the watchdog, or it will issue system reset
* @param    window - (optionally) window period to reset watchdog
*/
eDrvError watchdog_init(WDT_PERIOD_t period, WDT_WINDOW_t window){
    eDrvError exitStatus = drvUnknownError;
    uint8_t reg;
    
    //Perform initialization
    reg = window | period;
    _PROTECTED_WRITE(WDT.CTRLA, reg);
    //Lock CTRLA register
    reg = 0;
    reg = 1 << WDT_LOCK_bp;
    _PROTECTED_WRITE(WDT.STATUS, reg);

    exitStatus = drvNoError;
    return exitStatus;
}

/*!****************************************************************************
* @brief    Refresh watchdog timer to prevent SW reset
*/
eDrvError watchdog_refresh(void){
    eDrvError exitStatus = drvUnknownError;
    
    //Perform reset
    wdt_reset();

    exitStatus = drvNoError;
    return exitStatus;
}

/***************** (C) COPYRIGHT ************** END OF FILE ******** 4eef ****/
