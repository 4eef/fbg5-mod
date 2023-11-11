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
    uint16_t pwmValue = 312;
    
    //Initialize hardware
    hw_wrap_init();
    //Tests
    hw_wrap_setPwmVal(cmpOut0, pwmValue);
    
    //Cycle
    while(1){
//        hw_wrap_setPwmVal(cmpOut0, pwmValue);
    }
    
    return 0;
}

/***************** (C) COPYRIGHT ************** END OF FILE ******** 4eef ****/
