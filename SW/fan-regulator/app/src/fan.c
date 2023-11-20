/*!****************************************************************************
 * @file    fan.c
 * @author  4eef
 * @version V1.0
 * @date    November 5, 2023
 * @brief   Fan output setting routines
 */

/*!****************************************************************************
 * Include
 */
#include "fan.h"

/*!****************************************************************************
* MEMORY
*/
fanParams_type fanParams;

/*!****************************************************************************
 * @brief    Initialize module with turned off output
 */
eAppError fan_init(void){
    eAppError exitStatus = appUnknownError;
    eDrvError drvExitStatus;
    
    //Set defaults
    fanParams.kickstart = false;
    fanParams.kickTime = 0;
    fanParams.pwmOutput = 0;
    drvExitStatus = hw_wrap_setPwmWidth(cmpOut0, fanParams.pwmOutput);
    if(drvExitStatus != drvNoError){
        return appDrvError;
    }

    exitStatus = appNoError;
    return exitStatus;
}

/*!****************************************************************************
 * @brief    Set fan output
 * @param    output - percent of output blow power to be set
 */
eAppError fan_setOut(uint16_t output){
    eAppError exitStatus = appUnknownError;
    eDrvError drvExitStatus;
    uint32_t temp;
    
    //Perform check
    if(output > FAN_OUTPUT_MAX){
        return appBadParameter;
    }
    //Set output
    if(output == 0){
        fanParams.kickstart = false;
        fanParams.kickTime = 0;
        fanParams.pwmOutput = 0;
        drvExitStatus = hw_wrap_setPwmWidth(cmpOut0, fanParams.pwmOutput);
        if(drvExitStatus != drvNoError){
            return appDrvError;
        }
    }else{
        if(fanParams.pwmOutput == 0){
            fanParams.kickstart = true;
            fanParams.kickTime = FAN_KICKSTART_TIME_CYCLES;
        }else if((fanParams.kickstart) || (fanParams.kickTime != 0)){
            fanParams.kickTime--;
            if(fanParams.kickTime == 0){
                fanParams.kickstart = false;
            }
        }
        //Calculate PWM value
        temp = (uint32_t)output * FAN_OUTPUT_RANGE / FAN_OUTPUT_MAX;
        fanParams.pwmOutput = temp + FAN_OUTPUT_START;
        if((fanParams.kickstart) || (fanParams.pwmOutput >= FAN_OUTPUT_END)){
            fanParams.pwmOutput = FAN_OUTPUT_MAX;
        }
        //Set output
        drvExitStatus = hw_wrap_setPwmWidth(cmpOut0, fanParams.pwmOutput);
        if(drvExitStatus != drvNoError){
            return appDrvError;
        }
    }
    
    exitStatus = appNoError;
    return exitStatus;
}

/***************** (C) COPYRIGHT ************** END OF FILE ******** 4eef ****/
