/*!****************************************************************************
 * @file    thermistor.h
 * @author  4eef
 * @version V1.0
 * @date    November 5, 2023
 * @brief   Table of resistance values for thermistor at temperatures
 */

#ifndef thermistor_H
#define	thermistor_H

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
#define T2904N055                           -55
#define T2904N050                           -50
#define T2904N045                           -45
#define T2904N040                           -40
#define T2904N035                           -35
#define T2904N030                           -30
#define T2904N025                           -25
#define T2904N020                           -20
#define T2904N015                           -15
#define T2904N010                           -10
#define T2904N005                           -5
#define T2904Z000                           0
#define T2904P005                           5
#define T2904P010                           10
#define T2904P015                           15
#define T2904P020                           20
#define T2904P025                           25
#define T2904P030                           30
#define T2904P035                           35
#define T2904P040                           40
#define T2904P045                           45
#define T2904P050                           50
#define T2904P055                           55
#define T2904P060                           60
#define T2904P065                           65
#define T2904P070                           70
#define T2904P075                           75
#define T2904P080                           80
#define T2904P085                           85
#define T2904P090                           90
#define T2904P095                           95
#define T2904P100                           100
#define T2904P105                           105
#define T2904P110                           110
#define T2904P115                           115
#define T2904P120                           120
#define T2904P125                           125
#define T2904P130                           130
#define T2904P135                           135
#define T2904P140                           140
#define T2904P145                           145
#define T2904P150                           150
#define T2904P155                           155
#define R2904N055                           121.46
#define R2904N050                           84.439
#define R2904N045                           59.243
#define R2904N040                           41.938
#define R2904N035                           29.947
#define R2904N030                           21.567
#define R2904N025                           15.641
#define R2904N020                           11.466
#define R2904N015                           8.451
#define R2904N010                           6.2927
#define R2904N005                           4.7077
#define R2904Z000                           3.5563
#define R2904P005                           2.7119
#define R2904P010                           2.086
#define R2904P015                           1.6204
#define R2904P020                           1.2683
#define R2904P025                           1.0
#define R2904P030                           0.7942
#define R2904P035                           0.63268
#define R2904P040                           0.5074
#define R2904P045                           0.41026
#define R2904P050                           0.33363
#define R2904P055                           0.27243
#define R2904P060                           0.2237
#define R2904P065                           0.18459
#define R2904P070                           0.15305
#define R2904P075                           0.12755
#define R2904P080                           0.10677
#define R2904P085                           0.089928
#define R2904P090                           0.076068
#define R2904P095                           0.064524
#define R2904P100                           0.054941
#define R2904P105                           0.047003
#define R2904P110                           0.040358
#define R2904P115                           0.034743
#define R2904P120                           0.030007
#define R2904P125                           0.026006
#define R2904P130                           0.022609
#define R2904P135                           0.01972
#define R2904P140                           0.017251
#define R2904P145                           0.015139
#define R2904P150                           0.013321
#define R2904P155                           0.011754
#define NTC_R25_OHM                         10000
#define THERMISTOR_MPLY_FACTOR              10
#define TEMP_STEP                           (5 * THERMISTOR_MPLY_FACTOR)

/*!****************************************************************************
 * User typedef
 */
typedef struct{
    int16_t             temp;
    uint32_t            resistance;
}tempRes_type;

/*!****************************************************************************
 * Macro functions
 */
#define writeVal(temp, res) {(temp * THERMISTOR_MPLY_FACTOR), (res * NTC_R25_OHM * THERMISTOR_MPLY_FACTOR)}

/*!****************************************************************************
 * Extern variables
 */
extern tempRes_type const ntcTable[];

/*!****************************************************************************
 * Prototypes for the functions
 */
eDrvError thermistor_init(void);
eDrvError thermistor_getTemp(uint32_t res, int16_t *pTemp);

#endif //thermistor_H
/***************** (C) COPYRIGHT ************** END OF FILE ******** 4eef ****/
