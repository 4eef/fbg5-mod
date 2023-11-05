/*!****************************************************************************
* @file    app_errors.h
* @author  4eef
* @version V1.0
* @date    05.11.2023, 4eef
* @brief   --
*/

#ifndef app_errors_H
#define app_errors_H

/*!****************************************************************************
* Include
*/
#include <stdint.h>
#include <stdlib.h>

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

#endif //app_errors_H
/***************** (C) COPYRIGHT ************** END OF FILE ******** 4eef ****/