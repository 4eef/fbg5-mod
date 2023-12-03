/*!****************************************************************************
* @file    main.h
* @author  4eef
* @version V1.0
* @date    04.11.2023
* @brief   Main system routines
*/

#ifndef main_H
#define main_H

/*!****************************************************************************
* Include
*/
#include <avr/io.h>
#include <avr/cpufunc.h>
#include <stdbool.h>
#include <stdint.h>
#include <stdlib.h>
#include "hw_wrap.h"
#include "mcu_control.h"
#include "measurements.h"
#include "fan.h"
#include "delay.h"

/*!****************************************************************************
 * User define
 */
#define TEMPERATURE_MPLY_FACTOR             THERMISTOR_MPLY_FACTOR
#define TEMPERATURE_ERROR                   (0 * TEMPERATURE_MPLY_FACTOR)
#ifdef LIQUID
#define TEMPERATURE_THRESHOLD               (38 * TEMPERATURE_MPLY_FACTOR)
#define TEMPERATURE_MAX                     (48 * TEMPERATURE_MPLY_FACTOR)
#elif BASEMENT
#define TEMPERATURE_THRESHOLD               (30 * TEMPERATURE_MPLY_FACTOR)
#define TEMPERATURE_MAX                     (50 * TEMPERATURE_MPLY_FACTOR)
#endif
#define TEMPERATURE_WINDOW                  (TEMPERATURE_MAX - TEMPERATURE_THRESHOLD)
#define TEMPERATURE_HYSTERESIS              (1 * TEMPERATURE_MPLY_FACTOR)

/*!****************************************************************************
* Prototypes for the functions
*/
int main(void);

#endif //main_H
/***************** (C) COPYRIGHT ************** END OF FILE ******** 4eef ****/