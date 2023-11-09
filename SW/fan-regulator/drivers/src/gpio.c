 /*!****************************************************************************
* @file     gpio.c
* @author   4eef
* @version  V1.0
* @date     05.10.2020
* @brief    GPIO driver for ATtiny3217
*/

/*!****************************************************************************
* Include
*/
#include "gpio.h"

/*!****************************************************************************
* MEMORY
*/
//              port    npin    pinDir      initState   pinInvEn    pullUpEn    inputSense
pinMode_type const pinsMode[] = {
/*0 */  makepin(PORTA,  0,      PIN_INPUT,  0,          INV_DIS,    PUP_DIS,    PORT_ISC_INTDISABLE_gc),     //UPDI
/*1 */  makepin(PORTA,  1,      PIN_OUTPUT, 0,          INV_DIS,    PUP_DIS,    PORT_ISC_INTDISABLE_gc),     //MOSI
/*2 */  makepin(PORTA,  2,      PIN_INPUT,  0,          INV_DIS,    PUP_DIS,    PORT_ISC_INTDISABLE_gc),     //MISO
/*3 */  makepin(PORTA,  3,      PIN_OUTPUT, 0,          INV_DIS,    PUP_DIS,    PORT_ISC_INTDISABLE_gc),     //SCK
/*4 */  makepin(PORTA,  4,      PIN_INPUT,  0,          INV_DIS,    PUP_DIS,    PORT_ISC_INTDISABLE_gc),     //RES0
/*5 */  makepin(PORTA,  5,      PIN_OUTPUT, 1,          INV_DIS,    PUP_DIS,    PORT_ISC_INTDISABLE_gc),     //SSN
/*6 */  makepin(PORTA,  6,      PIN_INPUT,  0,          INV_DIS,    PUP_DIS,    PORT_ISC_INTDISABLE_gc),     //RES1
/*7 */  makepin(PORTA,  7,      PIN_INPUT,  0,          INV_DIS,    PUP_DIS,    PORT_ISC_INTDISABLE_gc),     //RES2
/*8 */  makepin(PORTB,  0,      PIN_INPUT,  0,          INV_DIS,    PUP_DIS,    PORT_ISC_INTDISABLE_gc),     //T_SENSE
/*9 */  makepin(PORTB,  1,      PIN_INPUT,  0,          INV_DIS,    PUP_DIS,    PORT_ISC_INTDISABLE_gc),     //RES3
/*10*/  makepin(PORTB,  2,      PIN_INPUT,  0,          INV_DIS,    PUP_DIS,    PORT_ISC_INTDISABLE_gc),     //RES4
/*11*/  makepin(PORTB,  3,      PIN_INPUT,  0,          INV_DIS,    PUP_DIS,    PORT_ISC_INTDISABLE_gc),     //RES5
/*12*/  makepin(PORTB,  4,      PIN_INPUT,  0,          INV_DIS,    PUP_DIS,    PORT_ISC_INTDISABLE_gc),     //TIMING
/*13*/  makepin(PORTB,  5,      PIN_INPUT,  0,          INV_DIS,    PUP_DIS,    PORT_ISC_INTDISABLE_gc),     //VIN_MEAS
/*14*/  makepin(PORTB,  6,      PIN_INPUT,  0,          INV_DIS,    PUP_DIS,    PORT_ISC_INTDISABLE_gc),     //RES6
/*15*/  makepin(PORTB,  7,      PIN_INPUT,  0,          INV_DIS,    PUP_DIS,    PORT_ISC_INTDISABLE_gc),     //RES7
/*16*/  makepin(PORTC,  0,      PIN_INPUT,  0,          INV_DIS,    PUP_DIS,    PORT_ISC_INTDISABLE_gc),     //HIGH
/*17*/  makepin(PORTC,  1,      PIN_INPUT,  0,          INV_DIS,    PUP_DIS,    PORT_ISC_INTDISABLE_gc),     //RES8
/*18*/  makepin(PORTC,  2,      PIN_INPUT,  0,          INV_DIS,    PUP_EN,     PORT_ISC_INTDISABLE_gc),     //MODE_SW
/*19*/  makepin(PORTC,  3,      PIN_INPUT,  0,          INV_DIS,    PUP_DIS,    PORT_ISC_INTDISABLE_gc),     //RES9
/*20*/  makepin(PORTC,  4,      PIN_INPUT,  0,          INV_DIS,    PUP_DIS,    PORT_ISC_INTDISABLE_gc),     //RES10
/*21*/  makepin(PORTC,  5,      PIN_INPUT,  0,          INV_DIS,    PUP_DIS,    PORT_ISC_INTDISABLE_gc),     //RES11
};
uint32_t pinNum = sizeof(pinsMode) / sizeof(pinMode_type);

/*!****************************************************************************
* InitAllGpio
*/
eDrvError gpio_init(void){
    eDrvError exitStatus = drvUnknownError;
    pinMode_type *pgpios;
    pinMode_type *pgpiosEnd;
    
    pgpios = (pinMode_type*)pinsMode;
    pgpiosEnd = pgpios + pinNum;
    
    while(pgpios < pgpiosEnd){
        gppin_init(pgpios->p, pgpios->npin, pgpios->pinDir, pgpios->initState, pgpios->pinInvEn, pgpios->pullUpEn, pgpios->inputSense);
        pgpios++;
    }
    
    exitStatus = drvNoError;
    return exitStatus;
}

/*!****************************************************************************
*
*/
eDrvError gppin_init(PORT_t *port, uint8_t npin, uint8_t pinDir, uint8_t initState, uint8_t pinInvEn, uint8_t pullUpEn, PORT_ISC_t inputSense){
    eDrvError exitStatus = drvUnknownError;
    //Set pin direction
    if(pinDir != 0){
        port->DIRSET = (1<<npin);
    }else{
        port->DIRCLR = (1<<npin);
    }
    
    //Set pin initial state
    if(initState != 0){
        port->OUTSET = (1<<npin);
    }else{
        port->OUTCLR = (1<<npin);
    }
    
    //Set pin controls
    switch(npin){
        case 0:
            port->PIN0CTRL = (pinInvEn << PORT_INVEN_bp) | (pullUpEn << PORT_PULLUPEN_bp) | (inputSense);
            break;
        case 1:
            port->PIN1CTRL = (pinInvEn << PORT_INVEN_bp) | (pullUpEn << PORT_PULLUPEN_bp) | (inputSense);
            break;
        case 2:
            port->PIN2CTRL = (pinInvEn << PORT_INVEN_bp) | (pullUpEn << PORT_PULLUPEN_bp) | (inputSense);
            break;
        case 3:
            port->PIN3CTRL = (pinInvEn << PORT_INVEN_bp) | (pullUpEn << PORT_PULLUPEN_bp) | (inputSense);
            break;
        case 4:
            port->PIN4CTRL = (pinInvEn << PORT_INVEN_bp) | (pullUpEn << PORT_PULLUPEN_bp) | (inputSense);
            break;
        case 5:
            port->PIN5CTRL = (pinInvEn << PORT_INVEN_bp) | (pullUpEn << PORT_PULLUPEN_bp) | (inputSense);
            break;
        case 6:
            port->PIN6CTRL = (pinInvEn << PORT_INVEN_bp) | (pullUpEn << PORT_PULLUPEN_bp) | (inputSense);
            break;
        case 7:
            port->PIN7CTRL = (pinInvEn << PORT_INVEN_bp) | (pullUpEn << PORT_PULLUPEN_bp) | (inputSense);
            break;
        default:
            break;
    }
    
    exitStatus = drvNoError;
    return exitStatus;
}

/*************** (C) COPYRIGHT ************** END OF FILE ********* 4eef *****/