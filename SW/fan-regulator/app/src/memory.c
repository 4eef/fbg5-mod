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
    eAppError exitStatus = appUnknownError;
    return exitStatus;
}

/***************** (C) COPYRIGHT ************** END OF FILE ******** 4eef ****/
