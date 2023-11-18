/*!****************************************************************************
 * @file    filter.c
 * @author  4eef
 * @version V1.0
 * @date    November 18, 2023
 * @brief   
 */

/*!****************************************************************************
 * Include
 */
#include "filter.h"

/*!****************************************************************************
 * @brief    Basic filter initialization
 * @param    p - pointer to structure of fltrParam_type
 */
eAppError filter_init(fltrParam_type *p){
    eAppError exitStatus = appUnknownError;
    
    p->Nb = FILTER_16BIT - FILTER_A;
    p->k = FILTER_RESOLUTION;
    
    exitStatus = appNoError;
    return exitStatus;
}

/*!****************************************************************************
 * @brief    Simple filter
 * @param    p - filter parameters structure
 * @param    x - data input
 * @param    pOut - processed data output
 */
eAppError filter_process(fltrParam_type *p, int16_t x, int16_t *pOut){
    eAppError exitStatus = appUnknownError;
    
    p->x = x;
    p->z += (x - p->y);
    p->y = (p->Nb * p->z) >> p->k;
    *pOut = p->y;
    
    exitStatus = appNoError;
    return exitStatus;
};

/***************** (C) COPYRIGHT ************** END OF FILE ******** 4eef ****/
