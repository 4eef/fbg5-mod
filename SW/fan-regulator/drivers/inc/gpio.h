/*!****************************************************************************
* @file     gpio.c
* @author   4eef
* @version  V1.0
* @date     05.10.2020
* @brief    GPIO driver for ATtiny3217
*/
#ifndef gpio_H
#define gpio_H

/*!****************************************************************************
* Include
*/
#include <avr/io.h>
#include <stdint.h>
#include <stdlib.h>
#include "errors.h"

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
    PORT_t          *p;                                                         //PORT
    uint8_t         npin;                                                       //MASK PIN
    uint8_t         pinDir;                                                     //Pin direction
    uint8_t         initState;                                                  //NUMBER PIN
    uint8_t         pinInvEn;                                                   //Initial state
    uint8_t         pullUpEn;                                                   //Number alternate function
    PORT_ISC_t      inputSense;                                                 //Input sense control
}pinMode_type;

typedef enum{
/*0 */  GP_UPDI,
/*1 */  GP_MOSI,
/*2 */  GP_MISO,
/*3 */  GP_SCK,
/*4 */  GP_RES0,
/*5 */  GP_SSN,
/*6 */  GP_RES1,
/*7 */  GP_RES2,
/*8 */  GP_T_SENSE,
/*9 */  GP_RES3,
/*10*/  GP_RES4,
/*11*/  GP_RES5,
/*12*/  GP_TIMING,
/*13*/  GP_VIN_MEAS,
/*14*/  GP_RES6,
/*15*/  GP_RES7,
/*16*/  GP_HIGH,
/*17*/  GP_RES8,
/*18*/  GP_MODE_SW,
/*19*/  GP_RES9,
/*20*/  GP_RES10,
/*21*/  GP_RES11,
        
        
GP_NOT_USED
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
* Prototypes for the functions in gpio.c
*/
eDrvError gppin_init(PORT_t *port, uint8_t npin, uint8_t pinDir, uint8_t initState, uint8_t pinInvEn, uint8_t pullUpEn, PORT_ISC_t inputSense);
eDrvError gpio_init(void);

#endif //gpio_H
/*************** (C) COPYRIGHT ************** END OF FILE ********* 4eef *****/
