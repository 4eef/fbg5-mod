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
eAppError measurements_init(void){
    eAppError exitStatus = appUnknownError;    
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
        drvExStatus = hw_wrap_adcGetInnrTemp(&value);
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
