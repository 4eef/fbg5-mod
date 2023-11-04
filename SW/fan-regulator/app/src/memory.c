/*!****************************************************************************
* @file    memory.c
* @author  4eef
* @version V1.0
* @date    19.11.2020, 4eef
* @brief   This module utilizes load distribution algorithm to prolong EEPROM
* @brief   life while storing and erasing constants.
*/

/*!****************************************************************************
* Include
*/
#include "memory.h"

/*!****************************************************************************
* MEMORY
*/
memory_type memory;

/*!****************************************************************************
* @brief    Initialize memory storage and set current mode
* @param    Whether or not current mode should be switched
*/
eAppError memory_init(void){
    eDrvError drvExitStatus;
    uint8_t i, data, memArray[MEMORY_SIZE] = {0};
    
    //Initialize variables
    memory.modeCellData = 0;
    memory.modeCurrCell = 0;
    memory.memInit = false;
    //Clear and initialize memory if it's not initialized
    drvExitStatus = hw_wrap_memoryRead((uint8_t *)DIAGNOSTICS_INFO_ADDR, &memory.diagnosis.infoByte0, DIAGNOSTICS_INFO_SIZE);
    if(drvExitStatus != drvNoError) return appDrvError;
    if(memory.diagnosis.memInitSign != MEMORY_INITIALIZED_MARK){
        //Initialize
        memory.diagnosis.infoByte0 = 0;
        memory.diagnosis.infoByte1 = 0;
        memory.diagnosis.modeErr = 0;
        memory.diagnosis.memInitSign = memArray[MEMORY_INITIALIZED_MARK_POS] = MEMORY_INITIALIZED_MARK;
        memory.modeCellData = memArray[MODE_MEMORY_START_POS] = MODE_1_MEMORY_MARK;
        drvExitStatus = hw_wrap_memoryWrite((uint8_t *)MEMORY_START_ADDR, &memArray[0], MEMORY_SIZE);
        if(drvExitStatus != drvNoError){
            return appDrvError;
        }
    }else{
        //Find out last symbol with mode setting data
        for(i = 0; i <= MODE_MEMORY_SIZE; i++){
            drvExitStatus = hw_wrap_memoryRead((uint8_t *)(MODE_MEMORY_START_ADDR + i), &data, MODE_DATA_NUM);
            if(drvExitStatus != drvNoError){
                return appDrvError;
            }
            if((data != MODE_1_MEMORY_MARK) && (data != MODE_2_MEMORY_MARK) && (data != MODE_3_MEMORY_MARK)){
                break;
            }
            memory.modeCurrCell = i;
            memory.modeCellData = data;
        }
    }
    
    memory.memInit = true;
    return appNoError;
}

/*!****************************************************************************
* @brief    Return the mode selector constant from memory
* @param    Pointer to a power supply current mode
*/
eAppError memory_getPwrLvl(uint8_t *pPwMode){
    
    //Inputs check
    if(pPwMode == NULL){
        return appBadParameter;
    }
    if(memory.memInit != true){
        return appDrvIsNotInit;
    }
    //Return current mode value
    *pPwMode = memory.modeCellData;
    
    return appNoError;
}

/*!****************************************************************************
* @brief    Write mode selector constant to memory
* @param    Power supply mode to set (store)
*/
eAppError memory_setPwrLvl(uint8_t pwMode){
    eDrvError drvExitStatus;
    uint8_t modeDataNum;
    
    //Check input
    if((pwMode != MODE_1_MEMORY_MARK) && (pwMode != MODE_2_MEMORY_MARK) && (pwMode != MODE_3_MEMORY_MARK)){
        return appBadParameter;
    }
    if(memory.memInit != true){
        return appDrvIsNotInit;
    }
    //Write constant
    memory.modeCellData = pwMode;
    if(memory.modeCurrCell >= (MODE_MEMORY_SIZE - 1)){
        memory.modeCurrCell = 0;
        modeDataNum = MODE_MEMORY_SIZE;
    }else{
        memory.modeCurrCell++;
        modeDataNum = MODE_DATA_NUM;
    }
    drvExitStatus = hw_wrap_memoryWrite((uint8_t *)(MODE_MEMORY_START_ADDR + memory.modeCurrCell), &memory.modeCellData, modeDataNum);
    if(drvExitStatus != drvNoError){
        return appDrvError;
    }
    
    return appNoError;
}

/***************** (C) COPYRIGHT ************** END OF FILE ******** 4eef ****/
