/*!****************************************************************************
 * @file    thermistor.c
 * @author  4eef
 * @version V1.0
 * @date    November 10, 2023
 * @brief   Table of resistance values for thermistor at temperatures
 */

/*!****************************************************************************
 * Include
 */
#include "thermistor.h"

/*!****************************************************************************
 * MEMORY
 */
tempRes_type const ntcTable[] = {
/*1 */  writeVal(T2904N055, R2904N055),
/*2 */  writeVal(T2904N050, R2904N050),
/*3 */  writeVal(T2904N045, R2904N045),
/*4 */  writeVal(T2904N040, R2904N040),
/*5 */  writeVal(T2904N035, R2904N035),
/*6 */  writeVal(T2904N030, R2904N030),
/*7 */  writeVal(T2904N025, R2904N025),
/*8 */  writeVal(T2904N020, R2904N020),
/*9 */  writeVal(T2904N015, R2904N015),
/*10*/  writeVal(T2904N010, R2904N010),
/*11*/  writeVal(T2904N005, R2904N005),
/*12*/  writeVal(T2904Z000, R2904Z000),
/*13*/  writeVal(T2904P005, R2904P005),
/*14*/  writeVal(T2904P010, R2904P010),
/*15*/  writeVal(T2904P015, R2904P015),
/*16*/  writeVal(T2904P020, R2904P020),
/*17*/  writeVal(T2904P025, R2904P025),
/*18*/  writeVal(T2904P030, R2904P030),
/*19*/  writeVal(T2904P035, R2904P035),
/*20*/  writeVal(T2904P040, R2904P040),
/*21*/  writeVal(T2904P045, R2904P045),
/*22*/  writeVal(T2904P050, R2904P050),
/*23*/  writeVal(T2904P055, R2904P055),
/*24*/  writeVal(T2904P060, R2904P060),
/*25*/  writeVal(T2904P065, R2904P065),
/*26*/  writeVal(T2904P070, R2904P070),
/*27*/  writeVal(T2904P075, R2904P075),
/*28*/  writeVal(T2904P080, R2904P080),
/*29*/  writeVal(T2904P085, R2904P085),
/*30*/  writeVal(T2904P090, R2904P090),
/*31*/  writeVal(T2904P095, R2904P095),
/*32*/  writeVal(T2904P100, R2904P100),
/*33*/  writeVal(T2904P105, R2904P105),
/*34*/  writeVal(T2904P110, R2904P110),
/*35*/  writeVal(T2904P115, R2904P115),
/*36*/  writeVal(T2904P120, R2904P120),
/*37*/  writeVal(T2904P125, R2904P125),
/*38*/  writeVal(T2904P130, R2904P130),
/*39*/  writeVal(T2904P135, R2904P135),
/*40*/  writeVal(T2904P140, R2904P140),
/*41*/  writeVal(T2904P145, R2904P145),
/*42*/  writeVal(T2904P150, R2904P150),
/*43*/  writeVal(T2904P155, R2904P155),
};
tempRes_type *pTable;
uint32_t ntcPoints = sizeof(ntcTable) / sizeof(tempRes_type);

/*!****************************************************************************
 * @brief   Initialize temperature table
 */
eDrvError thermistor_init(void){
    eDrvError exitStatus = drvUnknownError;
    
    pTable = (tempRes_type *) ntcTable;
    
    exitStatus = drvNoError;
    return exitStatus;
}


/*!****************************************************************************
 * @brief   Get actual temperature value from the table by resistance
 * @param   res - measured NTC resistance (multiplied by THERMISTOR_MPLY_FACTOR)
 * @param   pTemp - pointer to returned temperature value (multiplied by THERMISTOR_MPLY_FACTOR)
 */
eDrvError thermistor_getTemp(uint32_t res, int16_t *pTemp){
    eDrvError exitStatus = drvUnknownError;
    uint32_t residual, resolution, result;
    uint8_t i;
    
    //Check input
    if((res > ntcTable[0].resistance) || (res < ntcTable[ntcPoints - 1].resistance) || (pTemp == NULL)){
        return drvBadParameter;
    }
    //Perform search on the array
    i = 0;
    while(i < ntcPoints){
        if(ntcTable[i].resistance <= res){
            break;                                                              //Then value is between (i-1) and (i)
        }
        i++;
    }
    //Calculate temperature value assuming that graph between points is linear
    residual = ntcTable[i-1].resistance - ntcTable[i].resistance;
    resolution = residual / TEMP_STEP;
    residual = ntcTable[i-1].resistance - res;
    result = residual / resolution;
    //Return value
    *pTemp = ntcTable[i-1].temp + result;
    
    exitStatus = drvNoError;
    return exitStatus;
}

/***************** (C) COPYRIGHT ************** END OF FILE ******** 4eef ****/
