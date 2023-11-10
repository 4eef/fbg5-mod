/*!****************************************************************************
 * @file    thermistor_table.h
 * @author  4eef
 * @version V1.0
 * @date    November 5, 2023
 * @brief   Table of resistance values for thermistor at temperatures
 */

#ifndef thermistor_table_H
#define	thermistor_table_H

/*!****************************************************************************
 * Include
 */
#include <stdint.h>
#include <stdlib.h>
#include <stdbool.h>
#include "drv_errors.h"

/*!****************************************************************************
 * User define
 */
#define RT2904N055                          121.46
#define RT2904N050                          84.439
#define RT2904N045                          59.243
#define RT2904N040                          41.938
#define RT2904N035                          29.947
#define RT2904N030                          21.567
#define RT2904N025                          15.641
#define RT2904N020                          11.466
#define RT2904N015                          8.451
#define RT2904N010                          6.2927
#define RT2904N005                          4.7077
#define RT2904Z000                          3.5563
#define RT2904P005                          2.7119
#define RT2904P010                          2.086
#define RT2904P015                          1.6204
#define RT2904P020                          1.2683
#define RT2904P025                          1.0
#define RT2904P030                          0.7942
#define RT2904P035                          0.63268
#define RT2904P040                          0.5074
#define RT2904P045                          0.41026
#define RT2904P050                          0.33363
#define RT2904P055                          0.27243
#define RT2904P060                          0.2237
#define RT2904P065                          0.18459
#define RT2904P070                          0.15305
#define RT2904P075                          0.12755
#define RT2904P080                          0.10677
#define RT2904P085                          0.089928
#define RT2904P090                          0.076068
#define RT2904P095                          0.064524
#define RT2904P100                          0.054941
#define RT2904P105                          0.047003
#define RT2904P110                          0.040358
#define RT2904P115                          0.034743
#define RT2904P120                          0.030007
#define RT2904P125                          0.026006
#define RT2904P130                          0.022609
#define RT2904P135                          0.01972
#define RT2904P140                          0.017251
#define RT2904P145                          0.015139
#define RT2904P150                          0.013321
#define RT2904P155                          0.011754
#define RT_TEMP_START                       -55
#define RT_TEMP_STEP                        5
#define RT_POINTS                           43
#define NTC_THERMISTOR_R25_OHM              10000
#define MPLY_FACTOR                         10

/*!****************************************************************************
 * User typedef
 */
typedef struct{
    int8_t              temp;
    uint32_t            resistance;
}tempResMap_type;

typedef struct{
    tempResMap_type     rtArray[RT_POINTS];
}rt_type;

/*!****************************************************************************
* Macro functions
*/

/*!****************************************************************************
* Extern variables
*/

/*!****************************************************************************
* Prototypes for the functions
*/
eDrvError thermistor_table_init(void);

#endif //thermistor_table_H
/***************** (C) COPYRIGHT ************** END OF FILE ******** 4eef ****/
