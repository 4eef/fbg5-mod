/*!****************************************************************************
* @file    timer.h
* @author  4eef
* @version V1.0
* @date    27.12.2020, 4eef
* @brief   Timer-counter initialization and control functions
*/

#ifndef timer_H
#define timer_H

/*!****************************************************************************
* Include
*/
#include <avr/io.h>
#include <stdint.h>
#include <stdbool.h>
#include <stdlib.h>
#include "drv_errors.h"

/*!****************************************************************************
* User enum
*/
typedef enum{
    timCntA0 = 0,
    timCntB0,
    timCntB1,
    timCntD0
}eTimNum;

/*!****************************************************************************
* Prototypes for the functions
*/
eDrvError timer_initTimA(TCA_SINGLE_CLKSEL_t clk, TCA_SINGLE_WGMODE_t wgMode, uint8_t pwmOutputs, TCA_SINGLE_DIR_t dir);
eDrvError timer_startTimA(uint16_t top);
eDrvError timer_waitOvfTimA(uint16_t *pSysCycLen, bool *pIsCycBroken);
eDrvError timer_setPwmValue(register16_t *pReg, uint16_t value);
eDrvError timer_initTimB(TCB_t *p, TCB_CNTMODE_t mode, TCB_CLKSEL_t clk);
eDrvError timer_startTimB(TCB_t *p, uint16_t top);
eDrvError timer_waitOvfTimB(TCB_t *p, uint16_t *pSysCycLen, bool *pIsCycBroken);
eDrvError timer_initTimD(void);
eDrvError timer_startTimD(uint16_t top);
eDrvError timer_waitOvfTimD(uint16_t *pSysCycLen, bool *pIsCycBroken);
eDrvError timer_isTimEnabled(eTimNum timCnt, bool *pIsEnable);

#endif //timer_H
/***************** (C) COPYRIGHT ************** END OF FILE ******** 4eef ****/
