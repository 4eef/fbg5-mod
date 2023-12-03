#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/PROJ_DIR.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/PROJ_DIR.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=
else
COMPARISON_BUILD=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../app/src/delay.c ../app/src/mcu_control.c ../app/src/measurements.c ../app/src/memory.c ../app/src/ext_settings.c ../app/src/filter.c ../app/src/fan.c ../tinyAVR-1ser-drv/src/adc.c ../tinyAVR-1ser-drv/src/clock.c ../tinyAVR-1ser-drv/src/eeprom.c ../tinyAVR-1ser-drv/src/gpio.c ../tinyAVR-1ser-drv/src/mcu_options.c ../tinyAVR-1ser-drv/src/rtc.c ../tinyAVR-1ser-drv/src/spi.c ../tinyAVR-1ser-drv/src/timer.c ../tinyAVR-1ser-drv/src/usart.c ../tinyAVR-1ser-drv/src/watchdog.c ../hardware/src/thermistor.c ../hw-wrap/src/hw_wrap.c ../main/src/main.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1819418535/delay.o ${OBJECTDIR}/_ext/1819418535/mcu_control.o ${OBJECTDIR}/_ext/1819418535/measurements.o ${OBJECTDIR}/_ext/1819418535/memory.o ${OBJECTDIR}/_ext/1819418535/ext_settings.o ${OBJECTDIR}/_ext/1819418535/filter.o ${OBJECTDIR}/_ext/1819418535/fan.o ${OBJECTDIR}/_ext/321213250/adc.o ${OBJECTDIR}/_ext/321213250/clock.o ${OBJECTDIR}/_ext/321213250/eeprom.o ${OBJECTDIR}/_ext/321213250/gpio.o ${OBJECTDIR}/_ext/321213250/mcu_options.o ${OBJECTDIR}/_ext/321213250/rtc.o ${OBJECTDIR}/_ext/321213250/spi.o ${OBJECTDIR}/_ext/321213250/timer.o ${OBJECTDIR}/_ext/321213250/usart.o ${OBJECTDIR}/_ext/321213250/watchdog.o ${OBJECTDIR}/_ext/525381332/thermistor.o ${OBJECTDIR}/_ext/2047881166/hw_wrap.o ${OBJECTDIR}/_ext/565612547/main.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1819418535/delay.o.d ${OBJECTDIR}/_ext/1819418535/mcu_control.o.d ${OBJECTDIR}/_ext/1819418535/measurements.o.d ${OBJECTDIR}/_ext/1819418535/memory.o.d ${OBJECTDIR}/_ext/1819418535/ext_settings.o.d ${OBJECTDIR}/_ext/1819418535/filter.o.d ${OBJECTDIR}/_ext/1819418535/fan.o.d ${OBJECTDIR}/_ext/321213250/adc.o.d ${OBJECTDIR}/_ext/321213250/clock.o.d ${OBJECTDIR}/_ext/321213250/eeprom.o.d ${OBJECTDIR}/_ext/321213250/gpio.o.d ${OBJECTDIR}/_ext/321213250/mcu_options.o.d ${OBJECTDIR}/_ext/321213250/rtc.o.d ${OBJECTDIR}/_ext/321213250/spi.o.d ${OBJECTDIR}/_ext/321213250/timer.o.d ${OBJECTDIR}/_ext/321213250/usart.o.d ${OBJECTDIR}/_ext/321213250/watchdog.o.d ${OBJECTDIR}/_ext/525381332/thermistor.o.d ${OBJECTDIR}/_ext/2047881166/hw_wrap.o.d ${OBJECTDIR}/_ext/565612547/main.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1819418535/delay.o ${OBJECTDIR}/_ext/1819418535/mcu_control.o ${OBJECTDIR}/_ext/1819418535/measurements.o ${OBJECTDIR}/_ext/1819418535/memory.o ${OBJECTDIR}/_ext/1819418535/ext_settings.o ${OBJECTDIR}/_ext/1819418535/filter.o ${OBJECTDIR}/_ext/1819418535/fan.o ${OBJECTDIR}/_ext/321213250/adc.o ${OBJECTDIR}/_ext/321213250/clock.o ${OBJECTDIR}/_ext/321213250/eeprom.o ${OBJECTDIR}/_ext/321213250/gpio.o ${OBJECTDIR}/_ext/321213250/mcu_options.o ${OBJECTDIR}/_ext/321213250/rtc.o ${OBJECTDIR}/_ext/321213250/spi.o ${OBJECTDIR}/_ext/321213250/timer.o ${OBJECTDIR}/_ext/321213250/usart.o ${OBJECTDIR}/_ext/321213250/watchdog.o ${OBJECTDIR}/_ext/525381332/thermistor.o ${OBJECTDIR}/_ext/2047881166/hw_wrap.o ${OBJECTDIR}/_ext/565612547/main.o

# Source Files
SOURCEFILES=../app/src/delay.c ../app/src/mcu_control.c ../app/src/measurements.c ../app/src/memory.c ../app/src/ext_settings.c ../app/src/filter.c ../app/src/fan.c ../tinyAVR-1ser-drv/src/adc.c ../tinyAVR-1ser-drv/src/clock.c ../tinyAVR-1ser-drv/src/eeprom.c ../tinyAVR-1ser-drv/src/gpio.c ../tinyAVR-1ser-drv/src/mcu_options.c ../tinyAVR-1ser-drv/src/rtc.c ../tinyAVR-1ser-drv/src/spi.c ../tinyAVR-1ser-drv/src/timer.c ../tinyAVR-1ser-drv/src/usart.c ../tinyAVR-1ser-drv/src/watchdog.c ../hardware/src/thermistor.c ../hw-wrap/src/hw_wrap.c ../main/src/main.c



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk ${DISTDIR}/PROJ_DIR.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=ATtiny1617
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1819418535/delay.o: ../app/src/delay.c  .generated_files/flags/default/b2792c10bb1ac613230df6258bfabe93e4e34639 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1819418535" 
	@${RM} ${OBJECTDIR}/_ext/1819418535/delay.o.d 
	@${RM} ${OBJECTDIR}/_ext/1819418535/delay.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DBASEMENT -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -I"../hardware/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1819418535/delay.o.d" -MT "${OBJECTDIR}/_ext/1819418535/delay.o.d" -MT ${OBJECTDIR}/_ext/1819418535/delay.o -o ${OBJECTDIR}/_ext/1819418535/delay.o ../app/src/delay.c 
	
${OBJECTDIR}/_ext/1819418535/mcu_control.o: ../app/src/mcu_control.c  .generated_files/flags/default/62fc329d5eeb587153bc07e39489b1bedd127a54 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1819418535" 
	@${RM} ${OBJECTDIR}/_ext/1819418535/mcu_control.o.d 
	@${RM} ${OBJECTDIR}/_ext/1819418535/mcu_control.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DBASEMENT -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -I"../hardware/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1819418535/mcu_control.o.d" -MT "${OBJECTDIR}/_ext/1819418535/mcu_control.o.d" -MT ${OBJECTDIR}/_ext/1819418535/mcu_control.o -o ${OBJECTDIR}/_ext/1819418535/mcu_control.o ../app/src/mcu_control.c 
	
${OBJECTDIR}/_ext/1819418535/measurements.o: ../app/src/measurements.c  .generated_files/flags/default/731065aafbf26676aad69ed130913511875d927f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1819418535" 
	@${RM} ${OBJECTDIR}/_ext/1819418535/measurements.o.d 
	@${RM} ${OBJECTDIR}/_ext/1819418535/measurements.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DBASEMENT -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -I"../hardware/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1819418535/measurements.o.d" -MT "${OBJECTDIR}/_ext/1819418535/measurements.o.d" -MT ${OBJECTDIR}/_ext/1819418535/measurements.o -o ${OBJECTDIR}/_ext/1819418535/measurements.o ../app/src/measurements.c 
	
${OBJECTDIR}/_ext/1819418535/memory.o: ../app/src/memory.c  .generated_files/flags/default/862201d84bf56bc917bc6e15d1cc019f963dba90 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1819418535" 
	@${RM} ${OBJECTDIR}/_ext/1819418535/memory.o.d 
	@${RM} ${OBJECTDIR}/_ext/1819418535/memory.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DBASEMENT -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -I"../hardware/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1819418535/memory.o.d" -MT "${OBJECTDIR}/_ext/1819418535/memory.o.d" -MT ${OBJECTDIR}/_ext/1819418535/memory.o -o ${OBJECTDIR}/_ext/1819418535/memory.o ../app/src/memory.c 
	
${OBJECTDIR}/_ext/1819418535/ext_settings.o: ../app/src/ext_settings.c  .generated_files/flags/default/a522e1019e934053610cda63b2be0a62f45116c0 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1819418535" 
	@${RM} ${OBJECTDIR}/_ext/1819418535/ext_settings.o.d 
	@${RM} ${OBJECTDIR}/_ext/1819418535/ext_settings.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DBASEMENT -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -I"../hardware/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1819418535/ext_settings.o.d" -MT "${OBJECTDIR}/_ext/1819418535/ext_settings.o.d" -MT ${OBJECTDIR}/_ext/1819418535/ext_settings.o -o ${OBJECTDIR}/_ext/1819418535/ext_settings.o ../app/src/ext_settings.c 
	
${OBJECTDIR}/_ext/1819418535/filter.o: ../app/src/filter.c  .generated_files/flags/default/a34debfb2c733bb91b0ea25e95c7fd94eb059ae8 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1819418535" 
	@${RM} ${OBJECTDIR}/_ext/1819418535/filter.o.d 
	@${RM} ${OBJECTDIR}/_ext/1819418535/filter.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DBASEMENT -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -I"../hardware/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1819418535/filter.o.d" -MT "${OBJECTDIR}/_ext/1819418535/filter.o.d" -MT ${OBJECTDIR}/_ext/1819418535/filter.o -o ${OBJECTDIR}/_ext/1819418535/filter.o ../app/src/filter.c 
	
${OBJECTDIR}/_ext/1819418535/fan.o: ../app/src/fan.c  .generated_files/flags/default/d3db22386401e1e06b4ee4874ab6a3dd119160d9 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1819418535" 
	@${RM} ${OBJECTDIR}/_ext/1819418535/fan.o.d 
	@${RM} ${OBJECTDIR}/_ext/1819418535/fan.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DBASEMENT -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -I"../hardware/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1819418535/fan.o.d" -MT "${OBJECTDIR}/_ext/1819418535/fan.o.d" -MT ${OBJECTDIR}/_ext/1819418535/fan.o -o ${OBJECTDIR}/_ext/1819418535/fan.o ../app/src/fan.c 
	
${OBJECTDIR}/_ext/321213250/adc.o: ../tinyAVR-1ser-drv/src/adc.c  .generated_files/flags/default/71b39b01fafa01cb784dbb22f953d30ba22a7120 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/321213250" 
	@${RM} ${OBJECTDIR}/_ext/321213250/adc.o.d 
	@${RM} ${OBJECTDIR}/_ext/321213250/adc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DBASEMENT -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -I"../hardware/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/321213250/adc.o.d" -MT "${OBJECTDIR}/_ext/321213250/adc.o.d" -MT ${OBJECTDIR}/_ext/321213250/adc.o -o ${OBJECTDIR}/_ext/321213250/adc.o ../tinyAVR-1ser-drv/src/adc.c 
	
${OBJECTDIR}/_ext/321213250/clock.o: ../tinyAVR-1ser-drv/src/clock.c  .generated_files/flags/default/454da452afbea0289d82a80624f67de6db767465 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/321213250" 
	@${RM} ${OBJECTDIR}/_ext/321213250/clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/321213250/clock.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DBASEMENT -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -I"../hardware/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/321213250/clock.o.d" -MT "${OBJECTDIR}/_ext/321213250/clock.o.d" -MT ${OBJECTDIR}/_ext/321213250/clock.o -o ${OBJECTDIR}/_ext/321213250/clock.o ../tinyAVR-1ser-drv/src/clock.c 
	
${OBJECTDIR}/_ext/321213250/eeprom.o: ../tinyAVR-1ser-drv/src/eeprom.c  .generated_files/flags/default/ce4997139d39c03d129d87745d71c020540839bd .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/321213250" 
	@${RM} ${OBJECTDIR}/_ext/321213250/eeprom.o.d 
	@${RM} ${OBJECTDIR}/_ext/321213250/eeprom.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DBASEMENT -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -I"../hardware/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/321213250/eeprom.o.d" -MT "${OBJECTDIR}/_ext/321213250/eeprom.o.d" -MT ${OBJECTDIR}/_ext/321213250/eeprom.o -o ${OBJECTDIR}/_ext/321213250/eeprom.o ../tinyAVR-1ser-drv/src/eeprom.c 
	
${OBJECTDIR}/_ext/321213250/gpio.o: ../tinyAVR-1ser-drv/src/gpio.c  .generated_files/flags/default/ce7bf409ff040259e395ac8253bbf892ca59c52a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/321213250" 
	@${RM} ${OBJECTDIR}/_ext/321213250/gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/321213250/gpio.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DBASEMENT -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -I"../hardware/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/321213250/gpio.o.d" -MT "${OBJECTDIR}/_ext/321213250/gpio.o.d" -MT ${OBJECTDIR}/_ext/321213250/gpio.o -o ${OBJECTDIR}/_ext/321213250/gpio.o ../tinyAVR-1ser-drv/src/gpio.c 
	
${OBJECTDIR}/_ext/321213250/mcu_options.o: ../tinyAVR-1ser-drv/src/mcu_options.c  .generated_files/flags/default/24b2519386b970cd405d3e92559343cdc51b6a7c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/321213250" 
	@${RM} ${OBJECTDIR}/_ext/321213250/mcu_options.o.d 
	@${RM} ${OBJECTDIR}/_ext/321213250/mcu_options.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DBASEMENT -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -I"../hardware/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/321213250/mcu_options.o.d" -MT "${OBJECTDIR}/_ext/321213250/mcu_options.o.d" -MT ${OBJECTDIR}/_ext/321213250/mcu_options.o -o ${OBJECTDIR}/_ext/321213250/mcu_options.o ../tinyAVR-1ser-drv/src/mcu_options.c 
	
${OBJECTDIR}/_ext/321213250/rtc.o: ../tinyAVR-1ser-drv/src/rtc.c  .generated_files/flags/default/b4d7694446cb7be5bf05416db0e32014d7dd4a05 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/321213250" 
	@${RM} ${OBJECTDIR}/_ext/321213250/rtc.o.d 
	@${RM} ${OBJECTDIR}/_ext/321213250/rtc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DBASEMENT -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -I"../hardware/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/321213250/rtc.o.d" -MT "${OBJECTDIR}/_ext/321213250/rtc.o.d" -MT ${OBJECTDIR}/_ext/321213250/rtc.o -o ${OBJECTDIR}/_ext/321213250/rtc.o ../tinyAVR-1ser-drv/src/rtc.c 
	
${OBJECTDIR}/_ext/321213250/spi.o: ../tinyAVR-1ser-drv/src/spi.c  .generated_files/flags/default/822f3a8641579b8479187a13c46dd37cc6769afb .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/321213250" 
	@${RM} ${OBJECTDIR}/_ext/321213250/spi.o.d 
	@${RM} ${OBJECTDIR}/_ext/321213250/spi.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DBASEMENT -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -I"../hardware/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/321213250/spi.o.d" -MT "${OBJECTDIR}/_ext/321213250/spi.o.d" -MT ${OBJECTDIR}/_ext/321213250/spi.o -o ${OBJECTDIR}/_ext/321213250/spi.o ../tinyAVR-1ser-drv/src/spi.c 
	
${OBJECTDIR}/_ext/321213250/timer.o: ../tinyAVR-1ser-drv/src/timer.c  .generated_files/flags/default/c9f290d27e2d8478b037e59cc9826b656fd9bc8b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/321213250" 
	@${RM} ${OBJECTDIR}/_ext/321213250/timer.o.d 
	@${RM} ${OBJECTDIR}/_ext/321213250/timer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DBASEMENT -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -I"../hardware/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/321213250/timer.o.d" -MT "${OBJECTDIR}/_ext/321213250/timer.o.d" -MT ${OBJECTDIR}/_ext/321213250/timer.o -o ${OBJECTDIR}/_ext/321213250/timer.o ../tinyAVR-1ser-drv/src/timer.c 
	
${OBJECTDIR}/_ext/321213250/usart.o: ../tinyAVR-1ser-drv/src/usart.c  .generated_files/flags/default/c8d2e6a269b29c9f78e25e93e5721601edb0303f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/321213250" 
	@${RM} ${OBJECTDIR}/_ext/321213250/usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/321213250/usart.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DBASEMENT -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -I"../hardware/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/321213250/usart.o.d" -MT "${OBJECTDIR}/_ext/321213250/usart.o.d" -MT ${OBJECTDIR}/_ext/321213250/usart.o -o ${OBJECTDIR}/_ext/321213250/usart.o ../tinyAVR-1ser-drv/src/usart.c 
	
${OBJECTDIR}/_ext/321213250/watchdog.o: ../tinyAVR-1ser-drv/src/watchdog.c  .generated_files/flags/default/dfb38d6dfd8288ff16d292c485d24118cd2c84b5 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/321213250" 
	@${RM} ${OBJECTDIR}/_ext/321213250/watchdog.o.d 
	@${RM} ${OBJECTDIR}/_ext/321213250/watchdog.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DBASEMENT -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -I"../hardware/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/321213250/watchdog.o.d" -MT "${OBJECTDIR}/_ext/321213250/watchdog.o.d" -MT ${OBJECTDIR}/_ext/321213250/watchdog.o -o ${OBJECTDIR}/_ext/321213250/watchdog.o ../tinyAVR-1ser-drv/src/watchdog.c 
	
${OBJECTDIR}/_ext/525381332/thermistor.o: ../hardware/src/thermistor.c  .generated_files/flags/default/8fbdc9ea0865fb858a8742e811945cfde05b8300 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/525381332" 
	@${RM} ${OBJECTDIR}/_ext/525381332/thermistor.o.d 
	@${RM} ${OBJECTDIR}/_ext/525381332/thermistor.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DBASEMENT -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -I"../hardware/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/525381332/thermistor.o.d" -MT "${OBJECTDIR}/_ext/525381332/thermistor.o.d" -MT ${OBJECTDIR}/_ext/525381332/thermistor.o -o ${OBJECTDIR}/_ext/525381332/thermistor.o ../hardware/src/thermistor.c 
	
${OBJECTDIR}/_ext/2047881166/hw_wrap.o: ../hw-wrap/src/hw_wrap.c  .generated_files/flags/default/2671f3d38b9a4d2e69daa348c19e9ab3ce60ff9a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2047881166" 
	@${RM} ${OBJECTDIR}/_ext/2047881166/hw_wrap.o.d 
	@${RM} ${OBJECTDIR}/_ext/2047881166/hw_wrap.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DBASEMENT -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -I"../hardware/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/2047881166/hw_wrap.o.d" -MT "${OBJECTDIR}/_ext/2047881166/hw_wrap.o.d" -MT ${OBJECTDIR}/_ext/2047881166/hw_wrap.o -o ${OBJECTDIR}/_ext/2047881166/hw_wrap.o ../hw-wrap/src/hw_wrap.c 
	
${OBJECTDIR}/_ext/565612547/main.o: ../main/src/main.c  .generated_files/flags/default/36d0763a9135adadb8153f7c5c0e550b6077e883 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/565612547" 
	@${RM} ${OBJECTDIR}/_ext/565612547/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/565612547/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DBASEMENT -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -I"../hardware/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/565612547/main.o.d" -MT "${OBJECTDIR}/_ext/565612547/main.o.d" -MT ${OBJECTDIR}/_ext/565612547/main.o -o ${OBJECTDIR}/_ext/565612547/main.o ../main/src/main.c 
	
else
${OBJECTDIR}/_ext/1819418535/delay.o: ../app/src/delay.c  .generated_files/flags/default/e0cbf9b36cc60f2da5d46f5c3a4c7ce0185a8cde .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1819418535" 
	@${RM} ${OBJECTDIR}/_ext/1819418535/delay.o.d 
	@${RM} ${OBJECTDIR}/_ext/1819418535/delay.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DBASEMENT -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -I"../hardware/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1819418535/delay.o.d" -MT "${OBJECTDIR}/_ext/1819418535/delay.o.d" -MT ${OBJECTDIR}/_ext/1819418535/delay.o -o ${OBJECTDIR}/_ext/1819418535/delay.o ../app/src/delay.c 
	
${OBJECTDIR}/_ext/1819418535/mcu_control.o: ../app/src/mcu_control.c  .generated_files/flags/default/9c8803e44352d516678186b6b73f76faf598ce1 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1819418535" 
	@${RM} ${OBJECTDIR}/_ext/1819418535/mcu_control.o.d 
	@${RM} ${OBJECTDIR}/_ext/1819418535/mcu_control.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DBASEMENT -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -I"../hardware/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1819418535/mcu_control.o.d" -MT "${OBJECTDIR}/_ext/1819418535/mcu_control.o.d" -MT ${OBJECTDIR}/_ext/1819418535/mcu_control.o -o ${OBJECTDIR}/_ext/1819418535/mcu_control.o ../app/src/mcu_control.c 
	
${OBJECTDIR}/_ext/1819418535/measurements.o: ../app/src/measurements.c  .generated_files/flags/default/719ebed609ddcb0eec4c65f5fc4af923c5897668 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1819418535" 
	@${RM} ${OBJECTDIR}/_ext/1819418535/measurements.o.d 
	@${RM} ${OBJECTDIR}/_ext/1819418535/measurements.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DBASEMENT -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -I"../hardware/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1819418535/measurements.o.d" -MT "${OBJECTDIR}/_ext/1819418535/measurements.o.d" -MT ${OBJECTDIR}/_ext/1819418535/measurements.o -o ${OBJECTDIR}/_ext/1819418535/measurements.o ../app/src/measurements.c 
	
${OBJECTDIR}/_ext/1819418535/memory.o: ../app/src/memory.c  .generated_files/flags/default/d638cef4b9864cccfc2d0e22c1d9fac74cfed5a4 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1819418535" 
	@${RM} ${OBJECTDIR}/_ext/1819418535/memory.o.d 
	@${RM} ${OBJECTDIR}/_ext/1819418535/memory.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DBASEMENT -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -I"../hardware/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1819418535/memory.o.d" -MT "${OBJECTDIR}/_ext/1819418535/memory.o.d" -MT ${OBJECTDIR}/_ext/1819418535/memory.o -o ${OBJECTDIR}/_ext/1819418535/memory.o ../app/src/memory.c 
	
${OBJECTDIR}/_ext/1819418535/ext_settings.o: ../app/src/ext_settings.c  .generated_files/flags/default/fb8f77bbbd06ee5803342f8312976eeb399a1a0b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1819418535" 
	@${RM} ${OBJECTDIR}/_ext/1819418535/ext_settings.o.d 
	@${RM} ${OBJECTDIR}/_ext/1819418535/ext_settings.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DBASEMENT -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -I"../hardware/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1819418535/ext_settings.o.d" -MT "${OBJECTDIR}/_ext/1819418535/ext_settings.o.d" -MT ${OBJECTDIR}/_ext/1819418535/ext_settings.o -o ${OBJECTDIR}/_ext/1819418535/ext_settings.o ../app/src/ext_settings.c 
	
${OBJECTDIR}/_ext/1819418535/filter.o: ../app/src/filter.c  .generated_files/flags/default/f75933c0f312ae45cf657b4bb286d12193a64e7e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1819418535" 
	@${RM} ${OBJECTDIR}/_ext/1819418535/filter.o.d 
	@${RM} ${OBJECTDIR}/_ext/1819418535/filter.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DBASEMENT -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -I"../hardware/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1819418535/filter.o.d" -MT "${OBJECTDIR}/_ext/1819418535/filter.o.d" -MT ${OBJECTDIR}/_ext/1819418535/filter.o -o ${OBJECTDIR}/_ext/1819418535/filter.o ../app/src/filter.c 
	
${OBJECTDIR}/_ext/1819418535/fan.o: ../app/src/fan.c  .generated_files/flags/default/ec0d255122738e1c881114ed8ab39e3c13985f74 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1819418535" 
	@${RM} ${OBJECTDIR}/_ext/1819418535/fan.o.d 
	@${RM} ${OBJECTDIR}/_ext/1819418535/fan.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DBASEMENT -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -I"../hardware/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1819418535/fan.o.d" -MT "${OBJECTDIR}/_ext/1819418535/fan.o.d" -MT ${OBJECTDIR}/_ext/1819418535/fan.o -o ${OBJECTDIR}/_ext/1819418535/fan.o ../app/src/fan.c 
	
${OBJECTDIR}/_ext/321213250/adc.o: ../tinyAVR-1ser-drv/src/adc.c  .generated_files/flags/default/6b729272ce22902997fdb11bf340df0983b1dcb3 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/321213250" 
	@${RM} ${OBJECTDIR}/_ext/321213250/adc.o.d 
	@${RM} ${OBJECTDIR}/_ext/321213250/adc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DBASEMENT -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -I"../hardware/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/321213250/adc.o.d" -MT "${OBJECTDIR}/_ext/321213250/adc.o.d" -MT ${OBJECTDIR}/_ext/321213250/adc.o -o ${OBJECTDIR}/_ext/321213250/adc.o ../tinyAVR-1ser-drv/src/adc.c 
	
${OBJECTDIR}/_ext/321213250/clock.o: ../tinyAVR-1ser-drv/src/clock.c  .generated_files/flags/default/5033bea72099799f60fc51268f66b42ea2722e2b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/321213250" 
	@${RM} ${OBJECTDIR}/_ext/321213250/clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/321213250/clock.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DBASEMENT -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -I"../hardware/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/321213250/clock.o.d" -MT "${OBJECTDIR}/_ext/321213250/clock.o.d" -MT ${OBJECTDIR}/_ext/321213250/clock.o -o ${OBJECTDIR}/_ext/321213250/clock.o ../tinyAVR-1ser-drv/src/clock.c 
	
${OBJECTDIR}/_ext/321213250/eeprom.o: ../tinyAVR-1ser-drv/src/eeprom.c  .generated_files/flags/default/fa01df53986bf863716aa24cd619157f21066308 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/321213250" 
	@${RM} ${OBJECTDIR}/_ext/321213250/eeprom.o.d 
	@${RM} ${OBJECTDIR}/_ext/321213250/eeprom.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DBASEMENT -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -I"../hardware/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/321213250/eeprom.o.d" -MT "${OBJECTDIR}/_ext/321213250/eeprom.o.d" -MT ${OBJECTDIR}/_ext/321213250/eeprom.o -o ${OBJECTDIR}/_ext/321213250/eeprom.o ../tinyAVR-1ser-drv/src/eeprom.c 
	
${OBJECTDIR}/_ext/321213250/gpio.o: ../tinyAVR-1ser-drv/src/gpio.c  .generated_files/flags/default/2f1684d802c2759f05942c76be4750a7d9f8c353 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/321213250" 
	@${RM} ${OBJECTDIR}/_ext/321213250/gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/321213250/gpio.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DBASEMENT -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -I"../hardware/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/321213250/gpio.o.d" -MT "${OBJECTDIR}/_ext/321213250/gpio.o.d" -MT ${OBJECTDIR}/_ext/321213250/gpio.o -o ${OBJECTDIR}/_ext/321213250/gpio.o ../tinyAVR-1ser-drv/src/gpio.c 
	
${OBJECTDIR}/_ext/321213250/mcu_options.o: ../tinyAVR-1ser-drv/src/mcu_options.c  .generated_files/flags/default/3a77f18e8f33e0c1e2e7e5f66eb4bedfeb2a70a9 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/321213250" 
	@${RM} ${OBJECTDIR}/_ext/321213250/mcu_options.o.d 
	@${RM} ${OBJECTDIR}/_ext/321213250/mcu_options.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DBASEMENT -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -I"../hardware/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/321213250/mcu_options.o.d" -MT "${OBJECTDIR}/_ext/321213250/mcu_options.o.d" -MT ${OBJECTDIR}/_ext/321213250/mcu_options.o -o ${OBJECTDIR}/_ext/321213250/mcu_options.o ../tinyAVR-1ser-drv/src/mcu_options.c 
	
${OBJECTDIR}/_ext/321213250/rtc.o: ../tinyAVR-1ser-drv/src/rtc.c  .generated_files/flags/default/898d2bc3899d4d446bf106005acfd23863d35b24 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/321213250" 
	@${RM} ${OBJECTDIR}/_ext/321213250/rtc.o.d 
	@${RM} ${OBJECTDIR}/_ext/321213250/rtc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DBASEMENT -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -I"../hardware/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/321213250/rtc.o.d" -MT "${OBJECTDIR}/_ext/321213250/rtc.o.d" -MT ${OBJECTDIR}/_ext/321213250/rtc.o -o ${OBJECTDIR}/_ext/321213250/rtc.o ../tinyAVR-1ser-drv/src/rtc.c 
	
${OBJECTDIR}/_ext/321213250/spi.o: ../tinyAVR-1ser-drv/src/spi.c  .generated_files/flags/default/e7dabf3a12355029e07c79fb3300820fb5027689 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/321213250" 
	@${RM} ${OBJECTDIR}/_ext/321213250/spi.o.d 
	@${RM} ${OBJECTDIR}/_ext/321213250/spi.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DBASEMENT -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -I"../hardware/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/321213250/spi.o.d" -MT "${OBJECTDIR}/_ext/321213250/spi.o.d" -MT ${OBJECTDIR}/_ext/321213250/spi.o -o ${OBJECTDIR}/_ext/321213250/spi.o ../tinyAVR-1ser-drv/src/spi.c 
	
${OBJECTDIR}/_ext/321213250/timer.o: ../tinyAVR-1ser-drv/src/timer.c  .generated_files/flags/default/5e4ff5f2c04c4942f14c8c11263d574bc78ca58b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/321213250" 
	@${RM} ${OBJECTDIR}/_ext/321213250/timer.o.d 
	@${RM} ${OBJECTDIR}/_ext/321213250/timer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DBASEMENT -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -I"../hardware/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/321213250/timer.o.d" -MT "${OBJECTDIR}/_ext/321213250/timer.o.d" -MT ${OBJECTDIR}/_ext/321213250/timer.o -o ${OBJECTDIR}/_ext/321213250/timer.o ../tinyAVR-1ser-drv/src/timer.c 
	
${OBJECTDIR}/_ext/321213250/usart.o: ../tinyAVR-1ser-drv/src/usart.c  .generated_files/flags/default/8f8d246141f3d56f025d9f77489613d644d0686c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/321213250" 
	@${RM} ${OBJECTDIR}/_ext/321213250/usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/321213250/usart.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DBASEMENT -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -I"../hardware/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/321213250/usart.o.d" -MT "${OBJECTDIR}/_ext/321213250/usart.o.d" -MT ${OBJECTDIR}/_ext/321213250/usart.o -o ${OBJECTDIR}/_ext/321213250/usart.o ../tinyAVR-1ser-drv/src/usart.c 
	
${OBJECTDIR}/_ext/321213250/watchdog.o: ../tinyAVR-1ser-drv/src/watchdog.c  .generated_files/flags/default/cda790c76a7cce17597d04dd5e1c56c393bb2f4a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/321213250" 
	@${RM} ${OBJECTDIR}/_ext/321213250/watchdog.o.d 
	@${RM} ${OBJECTDIR}/_ext/321213250/watchdog.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DBASEMENT -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -I"../hardware/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/321213250/watchdog.o.d" -MT "${OBJECTDIR}/_ext/321213250/watchdog.o.d" -MT ${OBJECTDIR}/_ext/321213250/watchdog.o -o ${OBJECTDIR}/_ext/321213250/watchdog.o ../tinyAVR-1ser-drv/src/watchdog.c 
	
${OBJECTDIR}/_ext/525381332/thermistor.o: ../hardware/src/thermistor.c  .generated_files/flags/default/fcab555779cabe7d9098bd9fb8db62942d6a78f4 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/525381332" 
	@${RM} ${OBJECTDIR}/_ext/525381332/thermistor.o.d 
	@${RM} ${OBJECTDIR}/_ext/525381332/thermistor.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DBASEMENT -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -I"../hardware/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/525381332/thermistor.o.d" -MT "${OBJECTDIR}/_ext/525381332/thermistor.o.d" -MT ${OBJECTDIR}/_ext/525381332/thermistor.o -o ${OBJECTDIR}/_ext/525381332/thermistor.o ../hardware/src/thermistor.c 
	
${OBJECTDIR}/_ext/2047881166/hw_wrap.o: ../hw-wrap/src/hw_wrap.c  .generated_files/flags/default/509a05f2040ee4d998fb93f326148c33fe5f7164 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2047881166" 
	@${RM} ${OBJECTDIR}/_ext/2047881166/hw_wrap.o.d 
	@${RM} ${OBJECTDIR}/_ext/2047881166/hw_wrap.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DBASEMENT -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -I"../hardware/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/2047881166/hw_wrap.o.d" -MT "${OBJECTDIR}/_ext/2047881166/hw_wrap.o.d" -MT ${OBJECTDIR}/_ext/2047881166/hw_wrap.o -o ${OBJECTDIR}/_ext/2047881166/hw_wrap.o ../hw-wrap/src/hw_wrap.c 
	
${OBJECTDIR}/_ext/565612547/main.o: ../main/src/main.c  .generated_files/flags/default/e7e177a00a54f051436c128037d0987897c06128 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/565612547" 
	@${RM} ${OBJECTDIR}/_ext/565612547/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/565612547/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DBASEMENT -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -I"../hardware/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/565612547/main.o.d" -MT "${OBJECTDIR}/_ext/565612547/main.o.d" -MT ${OBJECTDIR}/_ext/565612547/main.o -o ${OBJECTDIR}/_ext/565612547/main.o ../main/src/main.c 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/PROJ_DIR.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=${DISTDIR}/PROJ_DIR.${IMAGE_TYPE}.map  -D__DEBUG=1  -DXPRJ_default=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1   -mdfp="${DFP_DIR}/xc8"   -gdwarf-2 -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DBASEMENT -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -I"../hardware/inc" -Wall -gdwarf-3 -mconst-data-in-progmem     $(COMPARISON_BUILD) -Wl,--memorysummary,${DISTDIR}/memoryfile.xml -o ${DISTDIR}/PROJ_DIR.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  -o ${DISTDIR}/PROJ_DIR.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -Wl,--start-group  -Wl,-lm -Wl,--end-group  -Wl,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1
	@${RM} ${DISTDIR}/PROJ_DIR.${IMAGE_TYPE}.hex 
	
else
${DISTDIR}/PROJ_DIR.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=${DISTDIR}/PROJ_DIR.${IMAGE_TYPE}.map  -DXPRJ_default=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DBASEMENT -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -I"../hardware/inc" -Wall -gdwarf-3 -mconst-data-in-progmem     $(COMPARISON_BUILD) -Wl,--memorysummary,${DISTDIR}/memoryfile.xml -o ${DISTDIR}/PROJ_DIR.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  -o ${DISTDIR}/PROJ_DIR.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -Wl,--start-group  -Wl,-lm -Wl,--end-group 
	${MP_CC_DIR}\\avr-objcopy -O ihex "${DISTDIR}/PROJ_DIR.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}" "${DISTDIR}/PROJ_DIR.${IMAGE_TYPE}.hex"
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${OBJECTDIR}
	${RM} -r ${DISTDIR}

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(wildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
