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
    bool isLoopBroken = false;
    uint16_t cycLen = 0;
    
    //Initialize hardware
    hw_wrap_init();
    //Tests
    
    //Cycle
    while(1){
        hw_wrap_setPwmWidth(cmpOut0, 300);
        hw_wrap_timSync(&cycLen, &isLoopBroken);
        hw_wrap_setPwmWidth(cmpOut0, 500);
        hw_wrap_timSync(&cycLen, &isLoopBroken);
    }
    
    return 0;
}

/***************** (C) COPYRIGHT ************** END OF FILE ******** 4eef ****/
