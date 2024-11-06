/*!****************************************************************************
 * @file    fan.h
 * @author  4eef
 * @version V1.0
 * @date    November 5, 2023
 * @brief   Fan output setting routines
 */

#ifndef fan_H
#define	fan_H

/*!****************************************************************************
 * Include
 */
#include <stdint.h>
#include <stdlib.h>
#include "app_errors.h"
#include "hw_wrap.h"

/*!****************************************************************************
 * User define
 */
#define FAN_MPLY_FACTOR                     PWM_MPLY_FACTOR
#define FAN_OUTPUT_MAX                      PWM_MAX_WIDTH
#ifdef LIQUID
#define FAN_OUTPUT_START                    (25 * FAN_MPLY_FACTOR)
#define FAN_OUTPUT_END                      (75 * FAN_MPLY_FACTOR)
#elif BASEMENT
#define FAN_OUTPUT_START                    (1 * FAN_MPLY_FACTOR)
#define FAN_OUTPUT_END                      (90 * FAN_MPLY_FACTOR)
#endif
#define FAN_OUTPUT_RANGE                    (FAN_OUTPUT_END - FAN_OUTPUT_START)
#define FAN_KICKSTART_TIME_MS               300
#define FAN_KICKSTART_TIME_CYCLES           (FAN_KICKSTART_TIME_MS / CYCLE_LEN_MS)

/*!****************************************************************************
 * User typedef
 */
typedef struct{
    bool                kickstart;
    uint16_t            kickTime;
    uint16_t            pwmOutput;
}fanParams_type;

/*!****************************************************************************
 * Prototypes for the functions
 */
eAppError fan_init(void);
eAppError fan_setOut(uint16_t output);

#endif //fan_H
/***************** (C) COPYRIGHT ************** END OF FILE ******** 4eef ****/
