/*!****************************************************************************
* @file    errors.h
* @author  4eef
* @version V1.0
* @date    22.12.2019, 4eef
* @brief   --
*/

#ifndef errors_H
#define errors_H

/*!****************************************************************************
* Include
*/
#include <stdint.h>
#include <stdlib.h>

/*!****************************************************************************
* User define
*/

/*!****************************************************************************
* User enum
*/
typedef enum{
    appNoError = 0,
    appBadParameter,
    appDrvIsNotInit,
    appDrvError,
    appDiagnosisNeeded,
    appResetNeeded,
    appUnknownError
}eAppError;

typedef enum{
    drvNoError = 0,
    drvBadParameter,
    drvHwError,
    drvUnknownError
}eDrvError;

#endif //errors_H
/***************** (C) COPYRIGHT ************** END OF FILE ******** 4eef ****/