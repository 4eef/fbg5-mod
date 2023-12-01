/*!****************************************************************************
* @file    main.c
* @author  4eef
* @version V1.0
* @date    04.11.2023
* @brief   Main system routines
*/

/*!****************************************************************************
* Include
*/
#include "main.h"

/*!****************************************************************************
* @brief    Main routine
*/
int main(void){
    eAppError appExitStatus;
    bool isSysRst;
    int16_t temperature;
    uint16_t output;
    uint32_t temp;
    
    //Initialize hardware
    hw_wrap_init();
    //Set up MCU
    mcu_control_init(&isSysRst);
    //Set up filters
    measurements_init();
    //Set up fan defaults
    fan_init();
    
    while(1){
        appExitStatus = measurements_getTemp(&temperature);
        if(appExitStatus != appNoError){
            mcu_control_rstSysCtrl(true);
        }
        if(temperature > (TEMPERATURE_THRESHOLD + TEMPERATURE_HYSTERESIS)){
            temp = temperature - TEMPERATURE_THRESHOLD;
            temp = temp * FAN_OUTPUT_MAX / TEMPERATURE_WINDOW;
            if(temp <= FAN_OUTPUT_MAX){
                output = temp;
            }else{
                output = FAN_OUTPUT_MAX;
            }
        }else if((temperature < (TEMPERATURE_THRESHOLD - TEMPERATURE_HYSTERESIS)) && (temperature > TEMPERATURE_ERROR)){
            output = 0;
        }else if(temperature < TEMPERATURE_ERROR){
            output = FAN_OUTPUT_MAX;
        }
        appExitStatus = fan_setOut(output);
        if(appExitStatus != appNoError){
            mcu_control_rstSysCtrl(true);
        }
        mcu_control_cycleSync();
    }
    
    return 0;
}

/***************** (C) COPYRIGHT ************** END OF FILE ******** 4eef ****/
