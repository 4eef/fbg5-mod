/*!****************************************************************************
* @file    timer.c
* @author  4eef
* @version V1.0
* @date    27.12.2020, 4eef
* @brief   Timer-counter initialization and control functions
*/

/*!****************************************************************************
* Include
*/
#include "timer.h"

/*!****************************************************************************
* @brief    Initialize timer counter A
* @param    clk - clock prescaler setting
* @param    wgMode - mode timer-counter should be initialized at
* @param    ovfValue - top value counter will overflow on (0 sets max value)
* @param    dir - counting direction
* @param    top - top value counter should reach
*/
eDrvError timer_initTimA(TCA_SINGLE_CLKSEL_t clk, TCA_SINGLE_WGMODE_t wgMode, uint8_t pwmOutputs, TCA_SINGLE_DIR_t dir){
    eDrvError exitStatus = drvUnknownError;
    
    //Perform initialization
    TCA0.SINGLE.CTRLA &= ~TCA_SINGLE_ENABLE_bm;
    TCA0.SINGLE.CTRLA &= ~TCA_SINGLE_CLKSEL_gm;
    TCA0.SINGLE.CTRLA |= clk;
    TCA0.SINGLE.CTRLB &= ~TCA_SINGLE_WGMODE_gm;
    TCA0.SINGLE.CTRLB |= wgMode;
    //Set up the PWM or FRQ mode output pins
    if(wgMode != TCA_SINGLE_WGMODE_NORMAL_gc){
        TCA0.SINGLE.CTRLB &= ~(TCA_SINGLE_CMP2EN_bm | TCA_SINGLE_CMP1EN_bm | TCA_SINGLE_CMP0EN_bm);
        pwmOutputs &= ~(TCA_SINGLE_ALUPD_bm | TCA_SINGLE_WGMODE_gm);
        TCA0.SINGLE.CTRLB |= pwmOutputs;
        TCA0.SINGLE.CTRLC |= TCA_SINGLE_CMP2OV_bm | TCA_SINGLE_CMP1OV_bm | TCA_SINGLE_CMP0OV_bm;
    }
    TCA0.SINGLE.CTRLD &= ~TCA_SINGLE_SPLITM_bm;                                 //Single mode by default
    TCA0.SINGLE.CTRLECLR &= ~TCA_SINGLE_DIR_bm;
    TCA0.SINGLE.CTRLESET |= dir;

    exitStatus = drvNoError;
    return exitStatus;
}


/*!****************************************************************************
* @brief    Start counting
* @param    *p - timer instance
*/
eDrvError timer_startTimA(uint16_t top){
    eDrvError exitStatus = drvUnknownError;
    
    //Set up top value
    TCA0.SINGLE.PER = top;
    //Reset timer
    TCA0.SINGLE.CNT = 0;
    //Start timer
    TCA0.SINGLE.CTRLA |= 1 << TCA_SINGLE_ENABLE_bp;
    
    exitStatus = drvNoError;
    return exitStatus;
}

/*!****************************************************************************
* @brief    Wait until timer counts to its set top
* @param    *pSysCycLen - length of current cycle (in counter units)
* @param    *pIsCycBroken - boolean flag representing broken counting cycle
*/
eDrvError timer_waitOvfTimA(uint16_t *pSysCycLen, bool *pIsCycBroken){
    eDrvError exitStatus = drvUnknownError;
    
    //Check operational mode
    if((TCA0.SINGLE.CTRLB & TCA_SINGLE_WGMODE_gm) != TCA_SINGLE_WGMODE_NORMAL_gc){
        return drvHwError;
    }
    //Cycle isn't broken
    if(((TCA0.SINGLE.INTFLAGS & TCA_SINGLE_OVF_bm) >> TCA_SINGLE_OVF_bp) == 0){
        *pSysCycLen = TCA0.SINGLE.CNT;
        *pIsCycBroken = false;
        if(TCA0.SINGLE.CTRLA & TCA_SINGLE_ENABLE_bm){
            while(((TCA0.SINGLE.INTFLAGS & TCA_SINGLE_OVF_bm) >> TCA_SINGLE_OVF_bp) == 0);
            TCA0.SINGLE.INTFLAGS |= 1 << TCA_SINGLE_OVF_bp;
        }
    }else{
        *pSysCycLen = 0;
        *pIsCycBroken = true;
        TCA0.SINGLE.INTFLAGS |= 1 << TCA_SINGLE_OVF_bp;
    }
    
    exitStatus = drvNoError;
    return exitStatus;
}


/*!****************************************************************************
* @brief    Sets output PWM value for particular output
* @param    *pReg - pointer to one of CMP registers
* @param    value - value to write
*/
eDrvError timer_setPwmValue(register16_t *pReg, uint16_t value){
    eDrvError exitStatus = drvUnknownError;
    
    //Perform checks
    if((pReg == NULL) || ((pReg != &TCA0.SINGLE.CMP0) && (pReg != &TCA0.SINGLE.CMP1) && (pReg != &TCA0.SINGLE.CMP2))){
        return drvBadParameter;
    }
    //Update value
    *pReg = value;
    
    exitStatus = drvNoError;
    
    return exitStatus;
}

/*!****************************************************************************
* @brief    Initialize timer counter B
* @param    *p - timer instance to initialize
* @param    mode - mode time-counter should be initialized at
* @param    clk - clock prescaler setting
* @param    top - top value counter should reach
*/
eDrvError timer_initTimB(TCB_t *p, TCB_CNTMODE_t mode, TCB_CLKSEL_t clk){
    eDrvError exitStatus = drvUnknownError;
    
    //Check inputs
    if(p == NULL){
        return drvBadParameter;
    }
    //Perform initialization
    p->CTRLA &= ~TCB_ENABLE_bm;
    p->CTRLA &= ~TCB_CLKSEL_gm;
    p->CTRLA |= clk;
    p->CTRLB &= ~TCB_CNTMODE_gm;
    p->CTRLB |= mode;

    exitStatus = drvNoError;
    return exitStatus;
}

/*!****************************************************************************
* @brief    Start counting
* @param    *p - timer instance
* @param    top - top value timer will overflow on
*/
eDrvError timer_startTimB(TCB_t *p, uint16_t top){
    eDrvError exitStatus = drvUnknownError;
    
    //Check inputs
    if(p == NULL){
        return drvBadParameter;
    }
    //Set up top value
    p->CCMP = top;
    //Reset timer
    p->CNT = 0;
    //Start counting
    p->CTRLA |= 1 << TCB_ENABLE_bp;
    
    exitStatus = drvNoError;
    return exitStatus;
}

/*!****************************************************************************
* @brief    Wait until timer counts to its set top
* @param    *p - timer instance
* @param    *pSysCycLen - length of current cycle (in counter units)
* @param    *pIsCycBroken - boolean flag representing broken counting cycle
*/
eDrvError timer_waitOvfTimB(TCB_t *p, uint16_t *pSysCycLen, bool *pIsCycBroken){
    eDrvError exitStatus = drvUnknownError;
    
    //Check inputs
    if(p == NULL){
        return drvBadParameter;
    }
    if((p->CTRLB & TCB_CNTMODE_gm) != TCB_CNTMODE_SINGLE_gc){
        return drvHwError;
    }
    //Cycle isn't broken
    if(p->STATUS & TCB_RUN_bm){
        *pSysCycLen = p->CNT;
        *pIsCycBroken = false;
        while(p->STATUS & TCB_RUN_bm);
    }else{
        *pSysCycLen = 0;
        *pIsCycBroken = true;
    }
    
    exitStatus = drvNoError;
    return exitStatus;
}

/*!****************************************************************************
* @brief    Initialize timer counter D
*/
eDrvError timer_initTimD(void){
    eDrvError exitStatus = drvUnknownError;
    
    //Check inputs
    if(0){
        return drvBadParameter;
    }
    //Perform initialization

    exitStatus = drvNoError;
    return exitStatus;
}

/*!****************************************************************************
* @brief    Start counting
* @param    top - top value timer will overflow on
*/
eDrvError timer_startTimD(uint16_t top){
    eDrvError exitStatus = drvUnknownError;
    return exitStatus;
}

/*!****************************************************************************
* @brief    Wait until timer counts to its set top
* @param    *pSysCycLen - length of current cycle (in counter units)
* @param    *pIsCycBroken - boolean flag representing broken counting cycle
*/
eDrvError timer_waitOvfTimD(uint16_t *pSysCycLen, bool *pIsCycBroken){
    eDrvError exitStatus = drvUnknownError;
    return exitStatus;
}

/*!****************************************************************************
* @brief    Is particular timer-counter enabled?
* @param    timCnt - timer-counter to ask
* @param    *pIsEnable - pointer to boolean with result
*/
eDrvError timer_isTimEnabled(eTimNum timCnt, bool *pIsEnable){
    eDrvError exitStatus = drvUnknownError;
    
    //Check pointer
    if(pIsEnable == NULL){
        return drvBadParameter;
    }
    
    switch(timCnt){
        case timCntA0:
            *pIsEnable = ((TCA0.SINGLE.CTRLA & TCA_SINGLE_ENABLE_bm) > 0) ? true : false;
            exitStatus = drvNoError;
            break;
        case timCntB0:
            *pIsEnable = ((TCB0.CTRLA & TCB_ENABLE_bm) > 0) ? true : false;
            exitStatus = drvNoError;
            break;
        case timCntB1:
            *pIsEnable = ((TCB1.CTRLA & TCB_ENABLE_bm) > 0) ? true : false;
            exitStatus = drvNoError;
            break;
        case timCntD0:
            *pIsEnable = ((TCD0.CTRLA & TCD_ENABLE_bm) > 0) ? true : false;
            exitStatus = drvNoError;
            break;
        default:
            exitStatus = drvBadParameter;
            break;
    }
        
    return exitStatus;
}

/***************** (C) COPYRIGHT ************** END OF FILE ******** 4eef ****/
