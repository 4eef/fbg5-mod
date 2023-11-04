/*!****************************************************************************
* @file    measurements.c
* @author  4eef
* @version V1.0
* @date    12.12.2020, 4eef
* @brief   Measurements for channels and signal filtration routines
*/

/*!****************************************************************************
* Include
*/
#include "measurements.h"

/*!****************************************************************************
* Local function prototypes
*/
int16_t filter(fltrParam_type *p, int16_t x);

/*!****************************************************************************
* MEMORY
*/
fltrParam_type fltTemp, fltVin, fltHigh;
bool outEn, hghBmEn;

/*!****************************************************************************
* @brief    Watch RC chain voltage level, and set output current mode
*/
eAppError measurements_init(bool sysRst, bool *pModeSwitchEn){
    eAppError exitStatus = appUnknownError;
    eDrvError adcRcExStatus, adcVinExStatus, adcHghExStatus, adcSwJmpExStatus;
    uint16_t rcVolt, vinValue, hghValue, swJmpValue;
    
    //Check inputs
    if(pModeSwitchEn == NULL){
        return appBadParameter;
    }
    //Measure the voltage on RC timing chain
    adcRcExStatus = hw_wrap_adcGetVolt(ADC_TIM_RC, &rcVolt);
    adcVinExStatus = hw_wrap_adcGetVolt(ADC_VIN, &vinValue);
    adcHghExStatus = hw_wrap_adcGetVolt(ADC_HIGH, &hghValue);
    adcSwJmpExStatus = hw_wrap_adcGetVolt(ADC_MODE_JMP, &swJmpValue);
    //Make measuring pin as power supply
    hw_wrap_pinSetDir(GP_TIMING, true);
    hw_wrap_pinSet(GP_TIMING);
    //Configure filters
    fltTemp.Nb = FILTER_16BIT - FILTER_A;
    fltVin.Nb = fltHigh.Nb = FILTER_16BIT - FILTER_A_MIN;
    fltTemp.k = fltVin.k = fltHigh.k = FILTER_RESOLUTION;
    //Outputs initial state
    outEn = false;
    hghBmEn = false;
    //Get the current previous mode
    if((adcRcExStatus == drvNoError) && (adcVinExStatus == drvNoError) && (adcHghExStatus == drvNoError) && (adcSwJmpExStatus == drvNoError)){
        //Mode setting
        if((rcVolt > SELECTOR_MODE_SW_V) && (vinValue > ENABLE_CHANNEL_ADC_VAL) && (hghValue > ENABLE_CHANNEL_ADC_VAL) && (sysRst == false)){
            *pModeSwitchEn = true;
        }else{
            *pModeSwitchEn = false;
        }
        exitStatus = appNoError;
    }else{
        exitStatus = appResetNeeded;
    }
    
    return exitStatus;
}

/*!****************************************************************************
* @brief    Measure the low beam channel and set the output value
* @param    Pointer to a low beam output switch
*/
eAppError measurements_getOutputEnable(bool *pOutEn){
    eAppError exitStatus = appUnknownError;
    eDrvError drvExStatus;
    uint16_t value = 0;
    
    if(pOutEn == NULL){
        exitStatus = appBadParameter;
    }else{
        //Get channel state value
        drvExStatus = hw_wrap_adcGetVolt(ADC_VIN, &value);
        if(drvExStatus != drvNoError){
            exitStatus = appResetNeeded;
        }else{
            //Filter value
            value = filter(&fltVin, value);
            //Set output
            if(value > (ENABLE_CHANNEL_ADC_VAL + ENABLE_HYSTERESIS_ADC_VAL)){
                *pOutEn = outEn = true;
            }else if(value < (ENABLE_CHANNEL_ADC_VAL - ENABLE_HYSTERESIS_ADC_VAL)){
                *pOutEn = outEn = false;
            }else{
                *pOutEn = outEn;
            }
            
            exitStatus = appNoError;
        }
    }
    
    return exitStatus;
}

/*!****************************************************************************
* @brief    Measure the high beam channel and set the output value
* @param    Pointer to a high beam output switch
*/
eAppError measurements_getHighBeamEnable(bool *pHghBmEn){
    eAppError exitStatus = appUnknownError;
    eDrvError drvExStatus;
    uint16_t value = 0;
    
    if(pHghBmEn == NULL){
        exitStatus = appBadParameter;
    }else{
        //Get channel state value
        drvExStatus = hw_wrap_adcGetVolt(ADC_HIGH, &value);
        if(drvExStatus != drvNoError){
            exitStatus = appResetNeeded;
        }else{
            //Filter value
            value = filter(&fltHigh, value);
            //Set output
            if(value > (ENABLE_CHANNEL_ADC_VAL + ENABLE_HYSTERESIS_ADC_VAL)){
                *pHghBmEn = hghBmEn = true;
            }else if(value < (ENABLE_CHANNEL_ADC_VAL - ENABLE_HYSTERESIS_ADC_VAL)){
                *pHghBmEn = hghBmEn = false;
            }else{
                *pHghBmEn = hghBmEn;
            }
            
            exitStatus = appNoError;
        }
    }
    
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
    
    if(pTemp == NULL){
        exitStatus = appBadParameter;
    }else{
        //Get channel state value
        drvExStatus = hw_wrap_adcGetTemp(&value);
        if(drvExStatus != drvNoError){
            exitStatus = appResetNeeded;
        }else{
            //Process a result
            *pTemp = filter(&fltTemp, value);
            
            exitStatus = appNoError;
        }
    }
    
    return exitStatus;
}

/*!****************************************************************************
* @brief    Simple filter
* @param    Filter parameters structure
* @param    Data input
*/
int16_t filter(fltrParam_type *p, int16_t x){
    p->x = x;
    p->z += (x - p->y);
    return p->y = (p->Nb * p->z) >> p->k;
};

/***************** (C) COPYRIGHT ************** END OF FILE ******** 4eef ****/
