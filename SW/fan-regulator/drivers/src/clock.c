/*!****************************************************************************
* @file    clock.c
* @author  4eef
* @version V1.0
* @date    13.10.2020
* @brief   Clock control routines
*/

/*!****************************************************************************
* Include
*/
#include "clock.h"

/*!****************************************************************************
* @brief    System clock settings initializer (20 MHz CLK)
*/
eDrvError clock_init(void){
    eDrvError exitStatus = drvUnknownError;
    uint8_t temp;
    
    temp = 0;
    temp &= ~CLKCTRL_CLKOUT_bm;                                                 //Disable CLKOUT
    temp &= ~CLKCTRL_CLKSEL_gm;
    temp |= CLKCTRL_CLKSEL_OSC20M_gc;                                           //Set 16/20M clock source
    _PROTECTED_WRITE(CLKCTRL.MCLKCTRLA, temp);
    temp = 0;
    temp &= ~CLKCTRL_PEN_bm;                                                    //Disable prescaler
    temp &= ~CLKCTRL_PDIV_gm;
    temp |= CLKCTRL_PDIV_2X_gc;                                                 //Div by 2 by default
    _PROTECTED_WRITE(CLKCTRL.MCLKCTRLB, temp);
    temp = 0;
    temp |= 1 << CLKCTRL_RUNSTDBY_bp;                                           //Run OSC20 clock in standby
    _PROTECTED_WRITE(CLKCTRL.OSC20MCTRLA, temp);
    temp = 0;
    temp |= 1 << CLKCTRL_RUNSTDBY_bp;                                           //Run OSC32 clock in standby
    _PROTECTED_WRITE(CLKCTRL.OSC32KCTRLA, temp);
    
    exitStatus = drvNoError;
    return exitStatus;
}

/***************** (C) COPYRIGHT ************** END OF FILE ******** 4eef ****/
