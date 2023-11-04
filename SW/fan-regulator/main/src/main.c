/*!****************************************************************************
* @file    main.c
* @author  4eef
* @version V1.0
* @date    04.11.2023, 4eef
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
//    eAppError appExStatus;
//    bool isSysRst = false, isSysFailed = false;
//    
//    //Initialize diagnostics mechanisms
//    appExStatus = mcu_control_init(&isSysRst);
//    if(appExStatus != appNoError) isSysFailed = true;
//    //Initialize system mechanisms
//    appExStatus = application_init(isSysRst);
//    if(appExStatus != appNoError) isSysFailed = true;
//    
//    while(1){
//        //Handle system reset control
//        appExStatus = mcu_control_rstSysCtrl(isSysFailed);
//        //System routine
//        if(appExStatus == appNoError){
//            //Run application mechanisms
//            appExStatus = application_run();
//            if(appExStatus != appNoError){
//                isSysFailed = true;
//            }
//            //Perform system cycle aligning
//            appExStatus = mcu_control_cycleSync();
//            if(appExStatus != appNoError){
//                isSysFailed = true;
//            }
//        }
//    }
    
    return 0;
}

/***************** (C) COPYRIGHT ************** END OF FILE ******** 4eef ****/
