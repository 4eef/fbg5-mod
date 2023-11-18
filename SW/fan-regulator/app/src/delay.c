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
eAppError delay_us(uint16_t time){
    eAppError exitStatus = appUnknownError;
    eDrvError drvExitStatus;

    //Check input
    if(time > DELAY_TIMER_MAX){
        return appBadParameter;
    }
    //Perform delay
    drvExitStatus = hw_wrap_timDelayUs(time);
    if(drvExitStatus != drvNoError) return appDrvError;
    
    exitStatus = appNoError;
    return exitStatus;
}

/*!****************************************************************************
* @brief    Delay in milliseconds
* @param    Time in milliseconds
* @retval   
*/
eAppError delay_ms(uint16_t time){
    eAppError exitStatus = appUnknownError;
    eDrvError drvExitStatus;
    uint16_t i;

    //Check input
    if(time > DELAY_TIMER_MAX){
        return appBadParameter;
    }
    //Perform delay
    for(i = 0; i < time; i++){
        drvExitStatus = hw_wrap_timDelayUs(DELAY_TIMER_MAX);
        if(drvExitStatus != drvNoError) return appDrvError;
    }
    
    exitStatus = appNoError;
    return exitStatus;
}

/***************** (C) COPYRIGHT ************** END OF FILE ******** 4eef ****/
