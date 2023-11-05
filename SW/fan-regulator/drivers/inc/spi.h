/*!****************************************************************************
* @file    spi.h
* @author  4eef
* @version V1.0
* @date    13.10.2020, 4eef
* @brief   Serial peripheral interface driver for ATtiny3217
*/

#ifndef spi_H
#define spi_H

/*!****************************************************************************
* Include
*/
#include <avr/io.h>
#include <stdint.h>
#include <stdlib.h>
#include "gpio.h"
#include "drv_errors.h"

/*!****************************************************************************
* Prototypes for the functions
*/
eDrvError spi_init(void);
eDrvError spi_receive(uint8_t *pRxData, uint16_t size);
eDrvError spi_transmitReceive(uint8_t *pTxData, uint8_t *pRxData, uint16_t size);

#endif //spi_H
/***************** (C) COPYRIGHT ************** END OF FILE ******** 4eef ****/