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

/*!****************************************************************************
* User define
*/
#define R_IN_DN_KOHM                        15
#define R_IN_UP_KOHM                        91
#define R_I_OUT_SENSE_MILLIOHM              47
#define R_I_SW_SENSE_MILLIOHM               20
#define ADC_TEMP_MPLY_FACTOR                10
#define ADC_TEMP_RSH_VAL                    3
#define ADC_TEMP_CAL_RSH_VAL                8
#define TMP235_START_TEMP_CELSIUM_X10       (-400)
#define TMP235_TEMP_COEFF_X10               1
#define TMP235_START_TEMP_MV                100
#define KELVIN_CELSIUM_ZERO_X10             2732
#define MEMORY_START_ADDR                   USER_SIGNATURES_START
#define MEMORY_END_ADDR                     USER_SIGNATURES_END
#define MEMORY_SIZE                         USER_SIGNATURES_SIZE
#define MEMORY_PAGE_SIZE                    USER_SIGNATURES_PAGE_SIZE
#define DIAGNOSTICS_INFO_ADDR               MEMORY_START_ADDR
#define DIAGNOSTICS_INFO_SIZE               4
#define MODE_MEMORY_START_ADDR              (DIAGNOSTICS_INFO_ADDR + DIAGNOSTICS_INFO_SIZE)
#define MODE_MEMORY_END_ADDR                MEMORY_END_ADDR
#define MODE_MEMORY_SIZE                    (MEMORY_SIZE - DIAGNOSTICS_INFO_SIZE)
#define MODE_1_MEMORY_MARK                  0xAA
#define MODE_2_MEMORY_MARK                  0xBB
#define MODE_3_MEMORY_MARK                  0xCC
#define MODE_DATA_NUM                       1
#define MODE_1_CURRENT                      1050
#define MODE_2_CURRENT                      2100
#define MODE_3_CURRENT                      3150
#define MEMORY_INITIALIZED_MARK             0xAE
#define MEMORY_INITIALIZED_MARK_POS         (4 - 1)
#define MODE_MEMORY_START_POS               (5 - 1)
#define SYSTEM_FREQ                         ((uint32_t)20000000)
#define VDD_VAL                             ADC_VREF_VDD
#define CYCLE_LEN_MS                        10
#define CYCLE_TIMER_20M_PRESC               8
#define CYCLE_DELAY_TIMER_MAX               1000
#define CYCLE_DELAY_TIMER_MPLY_FACTOR       10
#define CYCLE_TIMER_TOP_VALUE               (SYSTEM_FREQ / CYCLE_TIMER_20M_PRESC / CYCLE_DELAY_TIMER_MAX * CYCLE_LEN_MS)
#define PWM_FREQ                            16000                               // Hz
#define PWM_TIMER_TOP_VALUE                 (SYSTEM_FREQ / PWM_FREQ)

/*!****************************************************************************
* User enum
*/
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
eDrvError hw_wrap_adcGetExtTemp(int16_t *pTempVal);
eDrvError hw_wrap_memoryErasePage(uint8_t *pAddr);
eDrvError hw_wrap_memoryErase(void);
eDrvError hw_wrap_memoryWrite(uint8_t *pAddr, uint8_t *pData, uint8_t num);
eDrvError hw_wrap_memoryRead(uint8_t *pAddr, uint8_t *pData, uint8_t num);
eDrvError hw_wrap_wdgRefresh(void);
eDrvError hw_wrap_getRstReason(bool *pHwRst, bool *pIsWdRst, bool *pIsSwRst, bool *pIsPor);
eDrvError hw_wrap_sysReset(void);
eDrvError hw_wrap_timSync(uint16_t *pSysCycLen, bool *pIsLoopBroken);
eDrvError hw_wrap_timDelayUs(uint16_t time);
eDrvError hw_wrap_setPwmVal(eCmpOutNum regNum, uint16_t value);

#endif //hw_wrap_H
/***************** (C) COPYRIGHT ************** END OF FILE ******** 4eef ****/