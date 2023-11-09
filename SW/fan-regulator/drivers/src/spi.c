/*!****************************************************************************
* @file    spi.c
* @author  4eef
* @version V1.0
* @date    13.10.2020, 4eef
* @brief   Serial peripheral interface driver for ATtiny3217
*/

/*!****************************************************************************
* Include
*/
#include "spi.h"

/*!****************************************************************************
* @brief    Initialize SPI peripheral at preset settings
*/
eDrvError spi_init(void){
    eDrvError exitStatus = drvUnknownError;
    
    //Initialize routine
    SPI0.CTRLA &= ~(1 << SPI_DORD_bp);                                          //MSB first
    SPI0.CTRLA |= 1 << SPI_MASTER_bp;                                           //Master mode
    SPI0.CTRLA &= ~(1 << SPI_CLK2X_bp);                                         //Normal CLK speed
    SPI0.CTRLA &= ~SPI_PRESC_gm;
    SPI0.CTRLA |= SPI_PRESC_DIV128_gc;                                          //CLK / 128
    
    SPI0.CTRLB &= ~(1 << SPI_BUFEN_bp);                                         //Buffer mode off
    SPI0.CTRLB |= 1 << SPI_BUFWR_bp;                                            //First data write goes into the shift register
    SPI0.CTRLB |= 1 << SPI_SSD_bp;                                              //Disable hardware SS
    SPI0.CTRLB &= ~SPI_MODE_gm;
    SPI0.CTRLB |= SPI_MODE_0_gc;                                                //SPI mode 0
    
    SPI0.INTCTRL &= ~(1 << SPI_RXCIE_bp |
                      1 << SPI_TXCIE_bp |
                      1 << SPI_DREIE_bp |
                      1 << SPI_SSIE_bp |
                      1 << SPI_IE_bp);                                          //Disable interrupts
    
    SPI0.CTRLA |= 1 << SPI_ENABLE_bp;                                           //Enable peripheral
    
    exitStatus = drvNoError;
    return exitStatus;
}

/*!****************************************************************************
* @brief    Receive portion of data
* @param    Pointer to destination array
* @param    Number of bytes
*/
eDrvError spi_receive(uint8_t *pRxData, uint16_t size){
    eDrvError exitStatus = drvUnknownError;
    uint16_t i;
    
    //Perform checks
    if(!(SPI0.CTRLA & SPI_ENABLE_bm)){
        return drvHwError;
    }
    if((pRxData == NULL) || (size == 0)){
        return drvBadParameter;
    }
    //Perform a transmission
    gppin_reset(GP_NOT_USED);
    for(i = 0; i < size; i++){
        SPI0.DATA = 0;
        while(!(SPI0.INTFLAGS & SPI_IF_bm));                                    //Wait until transfer completes; TODO: add a timer
        *pRxData = SPI0.DATA;
        pRxData++;
    }
    gppin_set(GP_NOT_USED);
    
    exitStatus = drvNoError;
    return exitStatus;
}

/*!****************************************************************************
* @brief    Transmit and receive portion of data
* @param    Pointer to source array of data to transmit
* @param    Pointer to destination array of received data
* @param    Number of bytes
*/
eDrvError spi_transmitReceive(uint8_t *pTxData, uint8_t *pRxData, uint16_t size){
    eDrvError exitStatus = drvUnknownError;
    uint16_t i;
    
    //Perform checks
    if(!(SPI0.CTRLA & SPI_ENABLE_bm)){
        return drvHwError;
    }
    if((pTxData == NULL) || (pRxData == NULL) || (size == 0)){
        return drvBadParameter;
    }
    //Perform a transmission
    gppin_reset(GP_NOT_USED);
    for(i = 0; i < size; i++){
        SPI0.DATA = *pTxData;
        pTxData++;
        while(!(SPI0.INTFLAGS & SPI_IF_bm));                                    //Wait until transfer completes; TODO: add a timer
        *pRxData = SPI0.DATA;
        pRxData++;
    }
    gppin_set(GP_NOT_USED);
    
    exitStatus = drvNoError;
    return exitStatus;
}

/***************** (C) COPYRIGHT ************** END OF FILE ******** 4eef ****/
