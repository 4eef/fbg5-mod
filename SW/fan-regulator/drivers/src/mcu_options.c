/*!****************************************************************************
* @file    mcu_options.c
* @author  4eef
* @version V1.0
* @date    19.11.2020, 4eef
* @brief   Microcontroller unit HW settings and options
*/

/*!****************************************************************************
* Include
*/
#include "mcu_options.h"

/*!****************************************************************************
* @brief    
*/
eDrvError mcu_options_init(void){
    eDrvError exitStatus = drvUnknownError;
    
    exitStatus = drvNoError;
    return exitStatus;
}

/*!****************************************************************************
* @brief    Get power-on reset flag
*/
eDrvError mcu_options_isPorRstSet(bool *pPorRst){
    eDrvError exitStatus = drvUnknownError;
    
    //Check input
    if(pPorRst == NULL){
        return drvBadParameter;
    }
    //Return a POR reset state
    if((RSTCTRL.RSTFR & RSTCTRL_PORF_bm) != 0){
        *pPorRst = true;
        RSTCTRL.RSTFR |= 1 << RSTCTRL_PORF_bp;
    }else{
        *pPorRst = false;
    }
    
    exitStatus = drvNoError;
    return exitStatus;
}

/*!****************************************************************************
* @brief    Get software reset flag
*/
eDrvError mcu_options_isSwRstEngd(bool *pSwRst){
    eDrvError exitStatus = drvUnknownError;
    
    //Check input
    if(pSwRst == NULL){
        return drvBadParameter;
    }
    //Return a POR reset state
    if((RSTCTRL.RSTFR & RSTCTRL_SWRF_bm) != 0){
        *pSwRst = true;
        RSTCTRL.RSTFR |= 1 << RSTCTRL_SWRF_bp;
    }else{
        *pSwRst = false;
    }
    
    exitStatus = drvNoError;
    return exitStatus;
}

/*!****************************************************************************
* @brief    Get watchdog reset flag
*/
eDrvError mcu_options_isWdtRstEngd(bool *pWdtRst){
    eDrvError exitStatus = drvUnknownError;
    
    //Check input
    if(pWdtRst == NULL){
        return drvBadParameter;
    }
    //Return a POR reset state
    if((RSTCTRL.RSTFR & RSTCTRL_WDRF_bm) != 0){
        *pWdtRst = true;
        RSTCTRL.RSTFR |= 1 << RSTCTRL_WDRF_bp;
    }else{
        *pWdtRst = false;
    }
    
    exitStatus = drvNoError;
    return exitStatus;
}

/*!****************************************************************************
* @brief    Get a sum of external reset flags
*/
eDrvError mcu_options_isExtRstEngd(bool *pExtRst){
    eDrvError exitStatus = drvUnknownError;
    
    //Check input
    if(pExtRst == NULL){
        return drvBadParameter;
    }
    //Return a POR reset state
    if((RSTCTRL.RSTFR & (RSTCTRL_BORF_bm | RSTCTRL_EXTRF_bm | RSTCTRL_UPDIRF_bm)) != 0){
        *pExtRst = true;
        RSTCTRL.RSTFR |= (RSTCTRL_BORF_bm | RSTCTRL_EXTRF_bm | RSTCTRL_UPDIRF_bm);
    }else{
        *pExtRst = false;
    }
    
    exitStatus = drvNoError;
    return exitStatus;
}

/*!****************************************************************************
* @brief    Perform software reset
*/
eDrvError mcu_options_resetMcu(void){
    eDrvError exitStatus = drvUnknownError;
    
    _PROTECTED_WRITE(RSTCTRL.SWRR, (1 << RSTCTRL_SWRE_bp));
    
    exitStatus = drvNoError;
    return exitStatus;
}

/***************** (C) COPYRIGHT ************** END OF FILE ******** 4eef ****/
