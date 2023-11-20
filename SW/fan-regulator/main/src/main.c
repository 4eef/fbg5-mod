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
    bool isSysRst;
    
    //Initialize hardware
    hw_wrap_init();
    //Set up MCU
    mcu_control_init(&isSysRst);
    //Set up filters
    measurements_init();
    //Set up fan defaults
    fan_init();
    
    //Tests
    
    //Cycle
    while(1){
        //Tests
        
        mcu_control_cycleSync();
    }
    
    return 0;
}

/***************** (C) COPYRIGHT ************** END OF FILE ******** 4eef ****/
