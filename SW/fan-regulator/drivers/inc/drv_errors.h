/*!****************************************************************************
* @file    drv_errors.h
* @author  4eef
* @version V1.0
* @date    05.11.2023, 4eef
* @brief   --
*/

#ifndef drv_errors_H
#define drv_errors_H

/*!****************************************************************************
* Include
*/
#include <stdint.h>
#include <stdlib.h>

/*!****************************************************************************
* User enum
*/
typedef enum{
    drvNoError = 0,
    drvBadParameter,
    drvHwError,
    drvUnknownError
}eDrvError;

#endif //drv_errors_H
/***************** (C) COPYRIGHT ************** END OF FILE ******** 4eef ****/