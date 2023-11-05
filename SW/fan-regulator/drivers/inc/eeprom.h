/*!****************************************************************************
* @file    eeprom.h
* @author  4eef
* @version V1.0
* @date    12.01.2020, 4eef
* @brief   EEPROM read and write procedures
*/

#ifndef eeprom_H
#define eeprom_H

/*!****************************************************************************
* Include
*/
#include <avr/io.h>
#include <stdint.h>
#include <stdlib.h>
#include "drv_errors.h"

/*!****************************************************************************
* User define
*/
#define EMPTY_BYTE                          0xFF

/*!****************************************************************************
* Prototypes for the functions
*/
eDrvError eeprom_erasePage(uint8_t *pAddr);
eDrvError eeprom_erase(void);
eDrvError eeprom_read(uint8_t *pAddr, uint8_t *pData, uint8_t num);
eDrvError eeprom_write(uint8_t *pAddr, uint8_t *pData, uint8_t num);

#endif //eeprom_H
/***************** (C) COPYRIGHT ************** END OF FILE ******** 4eef ****/