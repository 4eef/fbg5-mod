/*!****************************************************************************
* @file    hw_wrap.h
* @author  4eef
* @version V1.0
* @date    09.11.2023
* @brief   Wrapper functions to make abstraction layer between drivers and logic
*/

#ifndef hw_wrap_H
#define hw_wrap_H

/*!****************************************************************************
* Include
*/
#include <stdint.h>
#include <stdlib.h>
#include <stdbool.h>
#include "spi.h"
#include "clock.h"
#include "gpio.h"
#include "adc.h"
#include "eeprom.h"
#include "mcu_options.h"
#include "watchdog.h"
#include "timer.h"
#include "thermistor.h"
#include "rtc.h"

/*!****************************************************************************
* User define
*/
#define SYSTEM_FREQ                         ((uint32_t)20000000)
#define INT32K_FREQ                         ((uint32_t)32768)
#define MS_IN_S                             1000
#define CYCLE_LEN_MS                        30
#define CYCLE_TIMER_PRESC                   1
#define CYCLE_TIMER_PERIOD_VALUE            (CYCLE_LEN_MS * INT32K_FREQ / CYCLE_TIMER_PRESC / MS_IN_S)
#define DELAY_TIMER_20M_PRESC               1
#define DELAY_TIMER_TOP_VALUE               (SYSTEM_FREQ / CYCLE_TIMER_PRESC / MS_IN_S)
#define DELAY_TIMER_MAX                     1000
#define DELAY_TIMER_MPLY_FACTOR             (DELAY_TIMER_TOP_VALUE / DELAY_TIMER_MAX)
#define PWM_FREQ                            ((uint32_t)16000)
#define PWM_TIMER_PRESCALER                 1
#define PWM_TIMER_TOP_VALUE                 (SYSTEM_FREQ / PWM_TIMER_PRESCALER / PWM_FREQ)
#define PWM_MPLY_FACTOR                     10
#define PWM_MAX_WIDTH                       (100 * PWM_MPLY_FACTOR)

/*!****************************************************************************
* Macro functions
*/
#define gppin_set(n)                _gppin_set(pinsMode[n].p, pinsMode[n].npin)
#define gppin_reset(n)              _gppin_reset(pinsMode[n].p, pinsMode[n].npin)
#define gppin_togle(n)              _gppin_togle(pinsMode[n].p, pinsMode[n].npin)
#define gppin_get(n)                _gppin_get(pinsMode[n].p, pinsMode[n].npin)
#define gppin_getFlag(n)            _gppin_getFlag(pinsMode[n].p, pinsMode[n].npin)
#define gppin_clrFlag(n)            _gppin_clrFlag(pinsMode[n].p, pinsMode[n].npin)
#define gppin_dirOut(n)             _gppin_dirOut(pinsMode[n].p, pinsMode[n].npin)
#define gppin_dirIn(n)              _gppin_dirOut(pinsMode[n].p, pinsMode[n].npin)

/*!****************************************************************************
* User enum
*/
typedef enum{
/*0 */  GP_UPDI,
/*1 */  GP_RES0,
/*2 */  GP_RES1,
/*3 */  GP_RES2,
/*4 */  GP_RES3,
/*5 */  GP_RES4,
/*6 */  GP_TSENSE,
/*7 */  GP_RES5,
/*8 */  GP_SWITCH,
/*9 */  GP_RES6,
/*10*/  GP_TXD,
/*11*/  GP_RXD,
/*12*/  GP_RES7,
/*13*/  GP_RES8,
/*14*/  GP_RES9,
/*15*/  GP_RES10,
/*16*/  GP_RES11,
/*17*/  GP_RES12,
/*18*/  GP_RES13,
/*19*/  GP_RES14,
/*20*/  GP_RES15,
/*21*/  GP_RES16,
/*XX*/  GP_NOT_USED
}GPnum_type;

typedef enum{
/*0 */  ADC_EMBTSENSE,
/*1 */  ADC_NTCTSENSE,
/*XX*/  ADC_NOT_USED
}eAdcChNum_type;

typedef enum{
    cmpOut0 = 0,
    cmpOut1,
    cmpOut2
}eCmpOutNum;

/*!****************************************************************************
* Prototypes for the functions
*/
eDrvError hw_wrap_init(void);
eDrvError hw_wrap_spiRx(uint8_t *pRxData, uint16_t size);
eDrvError hw_wrap_spiTxRx(uint8_t *pTxData, uint8_t *pRxData, uint16_t size);
eDrvError hw_wrap_pinSet(GPnum_type pin);
eDrvError hw_wrap_pinReset(GPnum_type pin);
eDrvError hw_wrap_pinSetDir(GPnum_type pin, bool pinDir);
eDrvError hw_wrap_adcGetInnrTemp(int16_t *pTempVal);
eDrvError hw_wrap_adcGetVolt(eAdcChNum_type channel, uint16_t *pVoltVal);
eDrvError hw_wrap_adcGetNtcTemp(int16_t *pTempVal);
eDrvError hw_wrap_memoryErasePage(uint8_t *pAddr);
eDrvError hw_wrap_memoryErase(void);
eDrvError hw_wrap_memoryWrite(uint8_t *pAddr, uint8_t *pData, uint8_t num);
eDrvError hw_wrap_memoryRead(uint8_t *pAddr, uint8_t *pData, uint8_t num);
eDrvError hw_wrap_wdgRefresh(void);
eDrvError hw_wrap_getRstReason(bool *pHwRst, bool *pIsWdRst, bool *pIsSwRst, bool *pIsPor);
eDrvError hw_wrap_sysReset(void);
eDrvError hw_wrap_timSync(uint16_t *pSysCycLen, bool *pIsLoopBroken);
eDrvError hw_wrap_timDelayUs(uint16_t time);
eDrvError hw_wrap_setPwmWidth(eCmpOutNum outNum, uint16_t width);

#endif //hw_wrap_H
/***************** (C) COPYRIGHT ************** END OF FILE ******** 4eef ****/