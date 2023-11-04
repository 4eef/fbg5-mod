/*!****************************************************************************
* @file    eeprom.c
* @author  4eef
* @version V1.0
* @date    12.01.2020, 4eef
* @brief   EEPROM read and write procedures
*/

/*!****************************************************************************
* Include
*/
#include "eeprom.h"

/*!****************************************************************************
* @brief    Erase EEPROM particular page
* @return   Operation status
* @note     Requires a delay after EEPROM erased, even if flags are OK
*/
eDrvError eeprom_erasePage(uint8_t *pAddr){
    eDrvError exitStatus = drvUnknownError;
    
    //Perform checks
    if(pAddr == NULL){
        return drvBadParameter;
    }
    if(NVMCTRL.STATUS & NVMCTRL_EEBUSY_bm){
        return drvHwError;
    }
    //Perform EEPROM erase
    *pAddr = EMPTY_BYTE;
    _PROTECTED_WRITE_SPM(NVMCTRL.CTRLA, NVMCTRL_CMD_PAGEERASE_gc);
    //Check flags
    while(NVMCTRL.STATUS & NVMCTRL_EEBUSY_bm){
        if(NVMCTRL.STATUS & NVMCTRL_WRERROR_bm){
            return drvHwError;
        }
    }
    
    exitStatus = drvNoError;
    return exitStatus;
}

/*!****************************************************************************
* @brief    Erase EEPROM
* @return   Operation status
* @note     Requires a delay after EEPROM erased, even if flags are OK
*/
eDrvError eeprom_erase(void){
    eDrvError exitStatus = drvUnknownError;
    
    //Perform check
    if(NVMCTRL.STATUS & NVMCTRL_EEBUSY_bm){
        return drvHwError;
    }
    //Perform EEPROM erase
    _PROTECTED_WRITE_SPM(NVMCTRL.CTRLA, NVMCTRL_CMD_EEERASE_gc);
    //Check flags
    while(NVMCTRL.STATUS & NVMCTRL_EEBUSY_bm){
        if(NVMCTRL.STATUS & NVMCTRL_WRERROR_bm){
            return drvHwError;
        }
    }
    
    exitStatus = drvNoError;
    return exitStatus;
}

/*!****************************************************************************
* @brief    Read a byte from EEPROM
* @param    Address pointer
* @param    Data pointer
* @param    Number of data-to-read
* @return   Operation status
* @note     For data pointer use (uint8_t *)(EEPROM_START + cellNum) or
* @note     (uint8_t *)(USER_SIGNATURES_START + cellNum) record.
*/
eDrvError eeprom_read(uint8_t *pAddr, uint8_t *pData, uint8_t num){
    eDrvError exitStatus = drvUnknownError;
    uint8_t i;
    
    //Check pointers and EEPROM status
    if((pAddr == NULL) || (pData == NULL)){
        return drvBadParameter;
    }
    if(NVMCTRL.STATUS & NVMCTRL_EEBUSY_bm){
        return drvHwError;
    }
    //Read
    for(i = num; i > 0; i--){
        *pData++ = *pAddr++;
    }
    
    exitStatus = drvNoError;
    return exitStatus;
}

/*!****************************************************************************
* @brief    Write a byte to EEPROM
* @param    Start address pointer
* @param    Data pointer
* @param    Number of data-to-write
* @return   Operation status
* @note     For data pointer use (uint8_t *)(EEPROM_START + cellNum) or
* @note     (uint8_t *)(USER_SIGNATURES_START + cellNum) record.
*/
eDrvError eeprom_write(uint8_t *pAddr, uint8_t *pData, uint8_t num){
    eDrvError exitStatus = drvUnknownError;
    
    //Check pointers and EEPROM status
    if((pAddr == NULL) || (pData == NULL)){
        return drvBadParameter;
    }
    if(NVMCTRL.STATUS & NVMCTRL_EEBUSY_bm){
        return drvHwError;
    }
    //Perform write
    while(1){
        *pAddr++ = *pData++;
        num--;
        if((((uint16_t)pAddr % EEPROM_PAGE_SIZE) == 0) || (num == 0)){
            _PROTECTED_WRITE_SPM(NVMCTRL.CTRLA, NVMCTRL_CMD_PAGEERASEWRITE_gc);
            //Check flags
            while(NVMCTRL.STATUS & NVMCTRL_EEBUSY_bm){
                if(NVMCTRL.STATUS & NVMCTRL_WRERROR_bm){
                    return drvHwError;
                }
            }
            //Writing data is done
            if(num == 0){
                break;
            }
        }
    }
    
    exitStatus = drvNoError;
    return exitStatus;
}

/***************** (C) COPYRIGHT ************** END OF FILE ******** 4eef ****/
