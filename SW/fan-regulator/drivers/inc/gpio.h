/*!****************************************************************************
* @file     gpio.c
* @author   4eef
* @version  V1.0
* @date     05.10.2020
* @brief    GPIO driver for ATtiny1617 / ATtiny3217
*/

#ifndef gpio_H
#define gpio_H

/*!****************************************************************************
* Include
*/
#include <avr/io.h>
#include <stdint.h>
#include <stdlib.h>
#include "drv_errors.h"

/*!****************************************************************************
* User define
*/
//DIR
#define PIN_INPUT                           0x00
#define PIN_OUTPUT                          0x01
//INV
#define INV_DIS                             0x00
#define INV_EN                              0x01
//PULLUP
#define PUP_DIS                             0x00
#define PUP_EN                              0x01

/*!****************************************************************************
* User typedef
*/
typedef struct{
    PORT_t          *p;                                                         //Port
    uint8_t         npin;                                                       //Pin number
    uint8_t         pinDir;                                                     //Pin direction
    uint8_t         initState;                                                  //Initial state
    uint8_t         pinInvEn;                                                   //Enable pin invert pin
    uint8_t         pullUpEn;                                                   //Enable pull-up resistor
    PORT_ISC_t      inputSense;                                                 //Input sense control
}pinMode_type;

/*!****************************************************************************
* User enum
*/
typedef enum{
/*0 */  GP_UPDI,
/*1 */  GP_RES0,
/*2 */  GP_RES1,
/*3 */  GP_RES2,
/*4 */  GP_RES3,
/*5 */  GP_RES4,
/*6 */  GP_TSENSE,
/*7 */  GP_RES5,
/*8 */  GP_SWITCH,
/*9 */  GP_RES6,
/*10*/  GP_TXD,
/*11*/  GP_RXD,
/*12*/  GP_RES7,
/*13*/  GP_RES8,
/*14*/  GP_RES9,
/*15*/  GP_RES10,
/*16*/  GP_RES11,
/*17*/  GP_RES12,
/*18*/  GP_RES13,
/*19*/  GP_RES14,
/*20*/  GP_RES15,
/*21*/  GP_RES16,
/*22*/  GP_NOT_USED
}GPnum_type;

/*!****************************************************************************
* Macro functions
*/
#define makepin(port, pin, pinDir, initState, pinInvEn, pullUpEn, inputSense)    {&port, pin, pinDir, initState, pinInvEn, pullUpEn, inputSense}
                                    
#define _gppin_set(port, npin)      (port->OUTSET = (1 << npin))
#define _gppin_reset(port, npin)    (port->OUTCLR = (1 << npin))
#define _gppin_togle(port, npin)    (port->OUTTGL = (1 << npin))
#define _gppin_get(port, npin)      ((port->IN & (1 << npin)) >> npin)
#define _gppin_getFlag(port, npin)  ((port->INTFLAGS & (1 << npin)) >> npin)
#define _gppin_clrFlag(port, npin)  (port->INTFLAGS = (1 << npin))
#define _gppin_dirOut(port, npin)   (port->DIRSET = (1<<npin))
#define _gppin_dirIn(port, npin)    (port->DIRCLR = (1<<npin))
#define gppin_set(n)                _gppin_set(pinsMode[n].p, pinsMode[n].npin)
#define gppin_reset(n)              _gppin_reset(pinsMode[n].p, pinsMode[n].npin)
#define gppin_togle(n)              _gppin_togle(pinsMode[n].p, pinsMode[n].npin)
#define gppin_get(n)                _gppin_get(pinsMode[n].p, pinsMode[n].npin)
#define gppin_getFlag(n)            _gppin_getFlag(pinsMode[n].p, pinsMode[n].npin)
#define gppin_clrFlag(n)            _gppin_clrFlag(pinsMode[n].p, pinsMode[n].npin)
#define gppin_dirOut(n)             _gppin_dirOut(pinsMode[n].p, pinsMode[n].npin)
#define gppin_dirIn(n)              _gppin_dirOut(pinsMode[n].p, pinsMode[n].npin)

/*!****************************************************************************
* Extern variables
*/
extern pinMode_type const pinsMode[];

/*!****************************************************************************
* Prototypes for the functions
*/
eDrvError gpio_init(void);

#endif //gpio_H
/*************** (C) COPYRIGHT ************** END OF FILE ********* 4eef *****/
