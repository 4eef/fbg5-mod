/*!****************************************************************************
* @file    delay.c
* @author  4eef
* @version V1.0
* @date    15.12.2020, 4eef
* @brief   General delay functions
*/

/*!****************************************************************************
* Include
*/
#include "delay.h"

/*!****************************************************************************
* @brief    Delay in microseconds
* @param    Time in microseconds
* @retval   
*/
eDrvError delay_us(uint16_t time){
    eDrvError exitStatus = drvUnknownError;

    //Check input
    if(time > CYCLE_TIMER_TOP_VALUE){
        return drvBadParameter;
    }
    //Perform delay
    exitStatus = hw_wrap_timDelayUs(time);
    
    return exitStatus;
}

/*!****************************************************************************
* @brief    Delay in milliseconds
* @param    Time in milliseconds
* @retval   
*/
eDrvError delay_ms(uint16_t time){
    eDrvError exitStatus = drvUnknownError;
    uint16_t i;

    //Check input
    if(time > CYCLE_TIMER_TOP_VALUE){
        return drvBadParameter;
    }
    //Perform delay
    for(i = 0; i < time; i++){
        exitStatus = hw_wrap_timDelayUs(CYCLE_TIMER_TOP_VALUE);
        if(exitStatus != drvNoError) return drvHwError;
    }
    
    return exitStatus;
}

/***************** (C) COPYRIGHT ************** END OF FILE ******** 4eef ****/
