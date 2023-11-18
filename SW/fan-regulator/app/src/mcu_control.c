/*!****************************************************************************
* @file    mcu_control.c
* @author  4eef
* @version V1.0
* @date    15.12.2020, 4eef
* @brief   Microcontroller unit general control mechanisms
*/

/*!****************************************************************************
* Include
*/
#include "mcu_control.h"

/*!****************************************************************************
* @brief    Initialize MCU
*/
eAppError mcu_control_init(bool *pIsSysRst){
    eAppError exitStatus = appUnknownError;
    eDrvError drvExStatus;
    bool hwRst, wdRst, swRst, poRst;
    
    //Start cycle from refreshing the IWDG timer
    drvExStatus = hw_wrap_wdgRefresh();
    if(drvExStatus != drvNoError){
        return appDrvError;
    }
    //Get last reset reason
    drvExStatus = hw_wrap_getRstReason(&hwRst, &wdRst, &swRst, &poRst);
    if(drvExStatus != drvNoError){
        return appDrvError;
    }
    //Send the signal regarding system reset
    *pIsSysRst = hwRst | wdRst | swRst;
    
    exitStatus = appNoError;
    return exitStatus;
}

/*!****************************************************************************
* @brief    Reset MCU if needed
*/
eAppError mcu_control_rstSysCtrl(bool isRstNeeded){
    eAppError exitStatus = appUnknownError;
    
    //Perform system reset
    if(isRstNeeded != false){
        hw_wrap_sysReset();
        return appResetNeeded;
    }
    
    exitStatus = appNoError;
    return exitStatus;
}

/*!****************************************************************************
* @brief    Make system cycle time aligned
*/
eAppError mcu_control_cycleSync(void){
    eAppError exitStatus = appUnknownError;
    eDrvError drvExStatus = drvUnknownError;
    uint16_t loopCnt;
    bool isBroken;
    
    //Refresh watchdog
    drvExStatus = hw_wrap_wdgRefresh();
    if(drvExStatus != drvNoError){
        return appDrvError;
    }
    //Sync the cycle with timer
    drvExStatus = hw_wrap_timSync(&loopCnt, &isBroken);
    if(drvExStatus != drvNoError){
        return appDrvError;
    }
    
    exitStatus = appNoError;
    return exitStatus;
}

/***************** (C) COPYRIGHT ************** END OF FILE ******** 4eef ****/
