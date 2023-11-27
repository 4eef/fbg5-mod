/*!****************************************************************************
* @file    hw_wrap.c
* @author  4eef
* @version V1.0
* @date    09.11.2023
* @brief   Wrapper functions to make abstraction layer between drivers and logic
*/

/*!****************************************************************************
* Include
*/
#include "hw_wrap.h"

/*!****************************************************************************
* MEMORY
*/
pinMode_type const pinsMode[] = {
/*0 */  makepin(PORTA,  0,      PIN_INPUT,  0,          INV_DIS,    PUP_DIS,    PORT_ISC_INTDISABLE_gc),    //UPDI
/*1 */  makepin(PORTA,  1,      PIN_INPUT,  0,          INV_DIS,    PUP_DIS,    PORT_ISC_INTDISABLE_gc),    //RES0
/*2 */  makepin(PORTA,  2,      PIN_INPUT,  0,          INV_DIS,    PUP_DIS,    PORT_ISC_INTDISABLE_gc),    //RES1
/*3 */  makepin(PORTA,  3,      PIN_INPUT,  0,          INV_DIS,    PUP_DIS,    PORT_ISC_INTDISABLE_gc),    //RES2
/*4 */  makepin(PORTA,  4,      PIN_INPUT,  0,          INV_DIS,    PUP_DIS,    PORT_ISC_INTDISABLE_gc),    //RES3
/*5 */  makepin(PORTA,  5,      PIN_INPUT,  0,          INV_DIS,    PUP_DIS,    PORT_ISC_INTDISABLE_gc),    //RES4
/*6 */  makepin(PORTA,  6,      PIN_INPUT,  0,          INV_DIS,    PUP_DIS,    PORT_ISC_INTDISABLE_gc),    //TSENSE
/*7 */  makepin(PORTA,  7,      PIN_INPUT,  0,          INV_DIS,    PUP_DIS,    PORT_ISC_INTDISABLE_gc),    //RES5
/*8 */  makepin(PORTB,  0,      PIN_OUTPUT, 0,          INV_DIS,    PUP_DIS,    PORT_ISC_INTDISABLE_gc),    //SWITCH
/*9 */  makepin(PORTB,  1,      PIN_INPUT,  0,          INV_DIS,    PUP_DIS,    PORT_ISC_INTDISABLE_gc),    //RES6
/*10*/  makepin(PORTB,  2,      PIN_OUTPUT, 0,          INV_DIS,    PUP_DIS,    PORT_ISC_INTDISABLE_gc),    //TXD
/*11*/  makepin(PORTB,  3,      PIN_INPUT,  0,          INV_DIS,    PUP_DIS,    PORT_ISC_INTDISABLE_gc),    //RXD
/*12*/  makepin(PORTB,  4,      PIN_INPUT,  0,          INV_DIS,    PUP_DIS,    PORT_ISC_INTDISABLE_gc),    //RES7
/*13*/  makepin(PORTB,  5,      PIN_INPUT,  0,          INV_DIS,    PUP_DIS,    PORT_ISC_INTDISABLE_gc),    //RES8
/*14*/  makepin(PORTB,  6,      PIN_INPUT,  0,          INV_DIS,    PUP_DIS,    PORT_ISC_INTDISABLE_gc),    //RES9
/*15*/  makepin(PORTB,  7,      PIN_INPUT,  0,          INV_DIS,    PUP_DIS,    PORT_ISC_INTDISABLE_gc),    //RES10
/*16*/  makepin(PORTC,  0,      PIN_INPUT,  0,          INV_DIS,    PUP_DIS,    PORT_ISC_INTDISABLE_gc),    //RES11
/*17*/  makepin(PORTC,  1,      PIN_INPUT,  0,          INV_DIS,    PUP_DIS,    PORT_ISC_INTDISABLE_gc),    //RES12
/*18*/  makepin(PORTC,  2,      PIN_INPUT,  0,          INV_DIS,    PUP_DIS,    PORT_ISC_INTDISABLE_gc),    //RES13
/*19*/  makepin(PORTC,  3,      PIN_INPUT,  0,          INV_DIS,    PUP_DIS,    PORT_ISC_INTDISABLE_gc),    //RES14
/*20*/  makepin(PORTC,  4,      PIN_INPUT,  0,          INV_DIS,    PUP_DIS,    PORT_ISC_INTDISABLE_gc),    //RES15
/*21*/  makepin(PORTC,  5,      PIN_INPUT,  0,          INV_DIS,    PUP_DIS,    PORT_ISC_INTDISABLE_gc),    //RES16
};

adcChannel_type const adcChannels[] = {
    adcChInit(ADC0, ADC_INITDLY_DLY32_gc, ADC_MUXPOS_TEMPSENSE_gc, 32, 1, 0, ADC_PRESC_DIV128_gc, ADC_REFSEL_INTREF_gc, VREF_ADC_REFSEL_1V1_gc, ADC_SAMPNUM_ACC8_gc, ADC_WINCM_NONE_gc),//Embedded temperature sensor
    adcChInit(ADC0, ADC_INITDLY_DLY0_gc, ADC_MUXPOS_AIN6_gc, 0, 1, 0, ADC_PRESC_DIV16_gc, ADC_REFSEL_VDDREF_gc, VREF_ADC_REFSEL_1V1_gc, ADC_SAMPNUM_ACC8_gc, ADC_WINCM_NONE_gc),//NTC temperature sensor
};

/*!****************************************************************************
* @brief    Initialize whole system hardware
*/
eDrvError hw_wrap_init(void){
    eDrvError exitStatus = drvUnknownError;
    uint32_t pinNum = sizeof(pinsMode) / sizeof(pinMode_type);
    
    //Initialize clocks
    clock_init(CLKCTRL_CLKSEL_OSC20M_gc, CLKCTRL_PDIV_2X_gc, false, true, true);
    //Initialize GPIOs
    gpio_init((pinMode_type *)pinsMode, pinNum);
    //Set up ADCs
    adc_init(&ADC0, ADC_RESSEL_10BIT_gc, ADC_DUTYCYC_DUTY25_gc, ADC_ASDV_ASVOFF_gc, 0);
    //Set up PWM timer
    timer_initTimA(TCA_SINGLE_CLKSEL_DIV1_gc, TCA_SINGLE_WGMODE_SINGLESLOPE_gc, TCA_SINGLE_CMP0EN_bm, TCA_SINGLE_DIR_UP_gc);
    //Set up a delay timer
    timer_initTimB(&TCB0, TCB_CNTMODE_SINGLE_gc, TCB_CLKSEL_CLKDIV1_gc);
    //Set up a RTC as cycle timer
    rtc_init(RTC_CLKSEL_INT32K_gc, CYCLE_TIMER_PERIOD_VALUE, CYCLE_TIMER_PERIOD_VALUE, RTC_PRESCALER_DIV1_gc, true);
    //Set up a watchdog timer
    watchdog_init(WDT_PERIOD_1KCLK_gc, WDT_WINDOW_OFF_gc);
    //Initialize NTC table
    thermistor_init();
    
    exitStatus = drvNoError;
    return exitStatus;
}

/*!****************************************************************************
* @brief    Receive number of bytes through SPI interface
* @param    Pointer to received data buffer
* @param    Size of data to receive
*/
eDrvError hw_wrap_spiRx(uint8_t *pRxData, uint16_t size){
    eDrvError exitStatus = drvUnknownError;
    
    gppin_reset(GP_NOT_USED);
    exitStatus = spi_receive(pRxData, size);
    gppin_set(GP_NOT_USED);
    
    return exitStatus;
}

/*!****************************************************************************
* @brief    Do a duplex transaction of number of bytes through SPI interface
* @param    Pointer to data-to-transmit
* @param    Pointer to received data buffer
* @param    Size of transaction
*/
eDrvError hw_wrap_spiTxRx(uint8_t *pTxData, uint8_t *pRxData, uint16_t size){
    eDrvError exitStatus = drvUnknownError;
    
    gppin_reset(GP_NOT_USED);
    exitStatus = spi_transmitReceive(pTxData, pRxData, size);
    gppin_set(GP_NOT_USED);
    
    return exitStatus;
}

/*!****************************************************************************
* @brief    Set specified pin to enabled state
* @param    IO pin
*/
eDrvError hw_wrap_pinSet(GPnum_type pin){
    eDrvError exitStatus = drvUnknownError;
    
    //Check input
    if(pin >= GP_NOT_USED){
        return drvBadParameter;
    }
    //Set pin state
    gppin_set(pin);
    
    exitStatus = drvNoError;
    return exitStatus;
}

/*!****************************************************************************
* @brief    Set specified pin to disabled state
* @param    IO pin
*/
eDrvError hw_wrap_pinReset(GPnum_type pin){
    eDrvError exitStatus = drvUnknownError;
    
    //Check input
    if(pin >= GP_NOT_USED){
        return drvBadParameter;
    }
    //Set pin state
    gppin_reset(pin);
    
    exitStatus = drvNoError;
    return exitStatus;
}

/*!****************************************************************************
* @brief    Set specified pin to output direction
* @param    IO pin
* @param    Pin direction: true - output, false - input
*/
eDrvError hw_wrap_pinSetDir(GPnum_type pin, bool pinDir){
    eDrvError exitStatus = drvUnknownError;
    
    //Check input
    if(pin >= GP_NOT_USED){
        return drvBadParameter;
    }
    //Set direction
    if(pinDir == true){
        gppin_dirOut(pin);
    }else{
        gppin_dirIn(pin);
    }
    exitStatus = drvNoError;
    
    return exitStatus;
}

/*!****************************************************************************
* @brief    Get reading of inner temperature sensor
* @param    Pointer where converted result (temp in C x 10) will be written
*/
eDrvError hw_wrap_adcGetInnrTemp(int16_t *pTempVal){
    eDrvError exitStatus = drvUnknownError, drvExitStatus;
    uint32_t temp;
    uint16_t adcVal, vRef;
    uint8_t ovrSmp;
    
    //Perform check
    if(pTempVal == NULL){
        return drvBadParameter;
    }
    //Get reading
    drvExitStatus = adc_getSample(adcChannels[ADC_EMBTSENSE], &adcVal, &ovrSmp, &vRef);
    if(drvExitStatus != drvNoError){
        return drvExitStatus;
    }
    //Process data
    temp = (uint32_t)adcVal * (uint32_t)vRef;
    temp = temp / ((ADC_RESOLUTION_LSB * ovrSmp) - 1);
    //Output (needs to be edited in order to use it)
    *pTempVal = ((temp - 1) / 1) + 1;
    
    exitStatus = drvNoError;
    return exitStatus;
}

/*!****************************************************************************
* @brief    Get voltage value of selected cannel
* @param    ADC channel
* @param    Pointer where converted result will be written
*/
eDrvError hw_wrap_adcGetVolt(eAdcChNum_type channel, uint16_t *pVoltVal){
    eDrvError exitStatus = drvUnknownError, drvExitStatus;
    uint32_t temp;
    uint16_t adcVal, vRef;
    uint8_t ovrSmp;
    
    //Perform check
    if(pVoltVal == NULL){
        return drvBadParameter;
    }
    //Get reading
    drvExitStatus = adc_getSample(adcChannels[channel], &adcVal, &ovrSmp, &vRef);
    if(drvExitStatus != drvNoError){
        return drvExitStatus;
    }
    //Convert results to voltage
    temp = (uint32_t)adcVal * (uint32_t)vRef;
    temp = temp / ((ADC_RESOLUTION_LSB * ovrSmp) - 1);
    //Output
    *pVoltVal = temp;
    
    exitStatus = drvNoError;
    return exitStatus;
}

/*!****************************************************************************
* @brief    Get reading of external temperature sensor
* @param    Pointer where converted result (temp in C x THERMISTOR_MPLY_FACTOR) will be written
*/
eDrvError hw_wrap_adcGetNtcTemp(int16_t *pTempVal){
    eDrvError exitStatus = drvUnknownError, drvExitStatus;
    uint32_t temp, vNtc, rNtc;
    uint16_t adcVal, vRef, vDiff;
    uint8_t ovrSmp;
    
    //Perform check
    if(pTempVal == NULL){
        return drvBadParameter;
    }
    //Get reading
    drvExitStatus = adc_getSample(adcChannels[ADC_NTCTSENSE], &adcVal, &ovrSmp, &vRef);
    if(drvExitStatus != drvNoError){
        return drvExitStatus;
    }
    //Process data
    temp = (uint32_t)adcVal * (uint32_t)vRef;
    vNtc = temp / ((ADC_RESOLUTION_LSB * ovrSmp) - 1);
    temp = R1_TEMP_SENSE_OHM * THERMISTOR_MPLY_FACTOR * vNtc;
    vDiff = vRef - vNtc;
    if(vDiff == 0) vDiff = 1;
    rNtc = temp / vDiff;
    //Output
    drvExitStatus = thermistor_getTemp(rNtc, pTempVal);
    if(drvExitStatus != drvNoError){
        return drvExitStatus;
    }
    
    exitStatus = drvNoError;
    return exitStatus;
}

/*!****************************************************************************
* @brief    Erase whole memory bank
*/
eDrvError hw_wrap_memoryErasePage(uint8_t *pAddr){
    eDrvError exitStatus = drvUnknownError;
    
    exitStatus = eeprom_erasePage(pAddr);
    
    return exitStatus;
}

/*!****************************************************************************
* @brief    Erase whole memory bank
*/
eDrvError hw_wrap_memoryErase(void){
    eDrvError exitStatus = drvUnknownError;
    
    exitStatus = eeprom_erase();
    
    return exitStatus;
}

/*!****************************************************************************
* @brief    Write amount of data to a specified address
* @param    Starting address pointer
* @param    Pointer to a data array
* @param    Number of data to be written
*/
eDrvError hw_wrap_memoryWrite(uint8_t *pAddr, uint8_t *pData, uint8_t num){
    eDrvError exitStatus = drvUnknownError;
    
    exitStatus = eeprom_write(pAddr, pData, num);
    
    return exitStatus;
}

/*!****************************************************************************
* @brief    Read amount of data from a specified address
* @param    Starting address pointer
* @param    Pointer to a data array
* @param    Number of data to be read
*/
eDrvError hw_wrap_memoryRead(uint8_t *pAddr, uint8_t *pData, uint8_t num){
    eDrvError exitStatus = drvUnknownError;
    
    exitStatus = eeprom_read(pAddr, pData, num);
    
    return exitStatus;
}

/*!****************************************************************************
* @brief    Refresh Watchdog timer
*/
eDrvError hw_wrap_wdgRefresh(void){
    eDrvError exitStatus = drvUnknownError;
    
    exitStatus = watchdog_refresh();
    
    return exitStatus;
}

/*!****************************************************************************
* @brief    Get one of three reasons of last reset
* @param    Hardware external reset
* @param    Power-on-reset
* @param    Software reset
* @param    Watchdog reset
*/
eDrvError hw_wrap_getRstReason(bool *pHwRst, bool *pIsWdRst, bool *pIsSwRst, bool *pIsPor){
    eDrvError exitStatus = drvUnknownError, drvExitStatus;
    
    drvExitStatus = mcu_options_isExtRstEngd(pHwRst);
    if(drvExitStatus != drvNoError){
        return drvExitStatus;
    }
    drvExitStatus = mcu_options_isWdtRstEngd(pIsWdRst);
    if(drvExitStatus != drvNoError){
        return drvExitStatus;
    }
    drvExitStatus = mcu_options_isSwRstEngd(pIsSwRst);
    if(drvExitStatus != drvNoError){
        return drvExitStatus;
    }
    drvExitStatus = mcu_options_isPorRstSet(pIsPor);
    if(drvExitStatus != drvNoError){
        return drvExitStatus;
    }
    
    exitStatus = drvNoError;
    return exitStatus;
}

/*!****************************************************************************
* @brief    Perform a software reset
*/
eDrvError hw_wrap_sysReset(void){
    eDrvError exitStatus = drvUnknownError, drvExitStatus;
    
    drvExitStatus = mcu_options_resetMcu();
    if(drvExitStatus != drvNoError){
        return drvExitStatus;
    }
    
    exitStatus = drvNoError;
    return exitStatus;
}

/*!****************************************************************************
* @brief    Loop syncing using general purpose timer function
* @param    Cycle length in microseconds
* @param    Loop broken report flag
*/
eDrvError hw_wrap_timSync(uint16_t *pSysCycLen, bool *pIsLoopBroken){
    eDrvError exitStatus = drvUnknownError;
    
    //Synchronize the cycle
    exitStatus = rtc_waitOvf(pSysCycLen, pIsLoopBroken);
    
    return exitStatus;
}

/*!****************************************************************************
* @brief    Delaying mechanism in microsecond resolution
* @param    time - delay time in microseconds
*/
eDrvError hw_wrap_timDelayUs(uint16_t time){
    eDrvError exitStatus = drvUnknownError, drvExitStatus;
    uint16_t cycLen;
    bool cycBrkn;
    
    //Check input
    if(time > DELAY_TIMER_MAX){
        return drvBadParameter;
    }
    drvExitStatus = timer_startTimB(&TCB0, (time * DELAY_TIMER_MPLY_FACTOR));
    if(drvExitStatus != drvNoError){
        return drvExitStatus;
    }
    drvExitStatus = timer_waitOvfTimB(&TCB0, &cycLen, &cycBrkn);
    if((drvExitStatus != drvNoError) || (cycBrkn == true)){
        return drvExitStatus;
    }
    
    exitStatus = drvNoError;
    return exitStatus;
}

/*!****************************************************************************
* @brief    Set output PWM width on the output
* @param    outNum - output compare pin to be set
* @param    width - PWM width (0 to PWM_MAX_WIDTH)
*/
eDrvError hw_wrap_setPwmWidth(eCmpOutNum outNum, uint16_t width){
    eDrvError exitStatus = drvUnknownError, drvExitStatus;
    bool isEnabled = false;
    uint32_t temp;
    uint16_t value;
    
    //Check value
    if(width > PWM_MAX_WIDTH){
        return drvBadParameter;
    }
    //Check timer
    drvExitStatus = timer_isTimEnabled(timCntA0, &isEnabled);
    if(drvExitStatus != drvNoError){
        return drvExitStatus;
    }
    //Enable output
    if(isEnabled == false){
        drvExitStatus = timer_startTimA(PWM_TIMER_TOP_VALUE);
        if(drvExitStatus != drvNoError){
            return drvExitStatus;
        }
    }
    //Calculate value
    temp = (uint32_t)width * PWM_TIMER_TOP_VALUE;
    temp = temp / PWM_MAX_WIDTH;
    value = temp;
    //Update value
    switch(outNum){
        case cmpOut0:
            exitStatus = timer_setPwmValue(&TCA0.SINGLE.CMP0, value);
            break;
        case cmpOut1:
            exitStatus = timer_setPwmValue(&TCA0.SINGLE.CMP1, value);
            break;
        case cmpOut2:
            exitStatus = timer_setPwmValue(&TCA0.SINGLE.CMP2, value);
            break;
        default:
            exitStatus = drvBadParameter;
            break;
    }
    
    return exitStatus;
}

/***************** (C) COPYRIGHT ************** END OF FILE ******** 4eef ****/

