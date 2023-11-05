/*!****************************************************************************
* @file    memory.h
* @author  4eef
* @version V1.0
* @date    19.11.2020, 4eef
* @brief   Memory management procedures
*/

#ifndef memory_H
#define memory_H

/*!****************************************************************************
* Include
*/
#include <stdbool.h>
#include <stdint.h>
#include <stdlib.h>
#include "app_errors.h"
#include "hw_wrap.h"

/*!****************************************************************************
* User typedef
*/
typedef struct{
    uint8_t             infoByte0;
    uint8_t             infoByte1;
    uint8_t             modeErr;
    uint8_t             memInitSign;
}diagnosis_type;

typedef struct{
    bool                memInit;
    diagnosis_type      diagnosis;
    uint8_t             modeCurrCell;
    uint8_t             modeCellData;
}memory_type;

/*!****************************************************************************
* Prototypes for the functions
*/
eAppError memory_init(void);
eAppError memory_getPwrLvl(uint8_t *pPwMode);
eAppError memory_setPwrLvl(uint8_t pwMode);

#endif //memory_H
/***************** (C) COPYRIGHT ************** END OF FILE ******** 4eef ****/