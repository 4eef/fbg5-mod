/*!****************************************************************************
* @file    measurements.c
* @author  4eef
* @version V1.0
* @date    November 18, 2023
* @brief   Measurements and filtration application routines
*/

/*!****************************************************************************
* Include
*/
#include "measurements.h"

/*!****************************************************************************
* MEMORY
*/
fltrParam_type fltTemp;

/*!****************************************************************************
* @brief    Watch RC chain voltage level, and set output current mode
*/
eAppError measurements_init(void){
    eAppError exitStatus = appUnknownError;
    
    //Configure filter
    filter_init(&fltTemp);
    
    exitStatus = appNoError;
    return exitStatus;
}

/*!****************************************************************************
* @brief    Measure the MCU temperature with internal thermal sensor
* @param    Temperature value
*/
eAppError measurements_getTemp(int16_t *pTemp){
    eAppError exitStatus = appUnknownError;
    eDrvError drvExStatus;
    int16_t value = 0;
    
    //Perform check
    if(pTemp == NULL){
        return appBadParameter;
    }
    //Get temperature from NTC
    drvExStatus = hw_wrap_adcGetNtcTemp(&value);
    if(drvExStatus != drvNoError){
        return appDrvError;
    }
    filter_process(&fltTemp, value, pTemp);

    exitStatus = appNoError;
    return exitStatus;
}

/***************** (C) COPYRIGHT ************** END OF FILE ******** 4eef ****/
