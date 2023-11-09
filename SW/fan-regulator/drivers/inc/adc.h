/*!****************************************************************************
* @file    adc.c
* @author  4eef
* @version V1.0
* @date    28.11.2020, 4eef
* @brief   ADC processing routines driver for ATtiny3217
*/
#ifndef adc_H
#define adc_H

/*!****************************************************************************
* Include
*/
#include <avr/io.h>
#include <stddef.h>
#include <stdint.h>
#include <stdbool.h>
#include <stdlib.h>
#include "drv_errors.h"
#include "timer.h"

/*!****************************************************************************
* User define
*/
#define ADC_DBG_RUN                             1
#define ADC_ERR                                 0
#define ADC_OVERSAMPLING_0                      1
#define ADC_OVERSAMPLING_1                      2
#define ADC_OVERSAMPLING_2                      4
#define ADC_OVERSAMPLING_3                      8
#define ADC_OVERSAMPLING_4                      16
#define ADC_OVERSAMPLING_5                      32
#define ADC_OVERSAMPLING_6                      64
#define ADC_VREF_VDD                            5000
#define ADC_VREF_0V55                           550
#define ADC_VREF_1V1                            1100
#define ADC_VREF_2V5                            2500
#define ADC_VREF_4V34                           4340
#define ADC_VREF_1V5                            1500
#define ADC_RESOLUTION_LSB                      1024
#define ADC_DELAY_MAX                           65535
#define ADC_STABILIZE_TIME                      1000
#define ADC_MEASUREMENTS_NUM                    2

/*!****************************************************************************
* User macro
*/
#define adcChInit(p, initDelay, numCh, smpLen, smpCap, freerun, prescaler, refSel, intRefSrc, smpAccNum, wndCmp) {&p, initDelay, numCh, smpLen, smpCap, freerun, prescaler, refSel, intRefSrc, smpAccNum, wndCmp}

/*!****************************************************************************
* User typedef
*/
typedef enum{
    VREF_ADC_REFSEL_0V55_gc = (0x00<<4),                                        //Voltage reference at 0.55V
    VREF_ADC_REFSEL_1V1_gc = (0x01<<4),                                         //Voltage reference at 1.1V
    VREF_ADC_REFSEL_2V5_gc = (0x02<<4),                                         //Voltage reference at 2.5V
    VREF_ADC_REFSEL_4V34_gc = (0x03<<4),                                        //Voltage reference at 4.34V
    VREF_ADC_REFSEL_1V5_gc = (0x04<<4),                                         //Voltage reference at 1.5V
}VREF_ADC_REFSEL_t;

typedef struct{
    ADC_t               *p;                                                     //ADC instance
    ADC_INITDLY_t       initDelay;                                              //Initialization delay
    ADC_MUXPOS_t        numCh;                                                  //Channel number
    uint8_t             smpLen;                                                 //Sample extension length
    uint8_t             smpCap;                                                 //Sampling capacitance selection
    uint8_t             freerun;                                                //Freerun mode
    ADC_PRESC_t         prescaler;                                              //Clock prescaler
    ADC_REFSEL_t        refSel;                                                 //Reference source select
    VREF_ADC_REFSEL_t   intRefSrc;                                              //Internal reference select
    ADC_SAMPNUM_t       smpAccNum;                                              //Accumulated samples number
    ADC_WINCM_t         wndCmp;                                                 //Window comparator
}adcChannel_type;

typedef enum{
    ADC_TSENSE,
    ADC_NOT_USED
}eAdcChNum_type;

/*!****************************************************************************
* Prototypes for the functions
*/
eDrvError adc_init(ADC_t *p, ADC_RESSEL_t resolution, ADC_DUTYCYC_t dutyCyc, ADC_ASDV_t autoSmpDelay, uint8_t startEvent);
eDrvError adc_getSample(eAdcChNum_type adcChannel, uint16_t *pData, uint8_t *pOverSampled, uint16_t *pRefVolt);

#endif //adc_H
/***************** (C) COPYRIGHT ************** END OF FILE ******** 4eef ****/
