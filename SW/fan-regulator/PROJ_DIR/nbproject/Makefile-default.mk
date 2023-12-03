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
${OBJECTDIR}/_ext/1819418535/delay.o: ../app/src/delay.c  .generated_files/flags/default/27e76ab4c1373452ac29634aad0ecfaef16ffb2f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1819418535" 
	@${RM} ${OBJECTDIR}/_ext/1819418535/delay.o.d 
	@${RM} ${OBJECTDIR}/_ext/1819418535/delay.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DLIQUID -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -I"../hardware/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1819418535/delay.o.d" -MT "${OBJECTDIR}/_ext/1819418535/delay.o.d" -MT ${OBJECTDIR}/_ext/1819418535/delay.o -o ${OBJECTDIR}/_ext/1819418535/delay.o ../app/src/delay.c 
	
${OBJECTDIR}/_ext/1819418535/mcu_control.o: ../app/src/mcu_control.c  .generated_files/flags/default/e51bd28d8b04e8dc8b8dca0474bbc76130fd41f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1819418535" 
	@${RM} ${OBJECTDIR}/_ext/1819418535/mcu_control.o.d 
	@${RM} ${OBJECTDIR}/_ext/1819418535/mcu_control.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DLIQUID -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -I"../hardware/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1819418535/mcu_control.o.d" -MT "${OBJECTDIR}/_ext/1819418535/mcu_control.o.d" -MT ${OBJECTDIR}/_ext/1819418535/mcu_control.o -o ${OBJECTDIR}/_ext/1819418535/mcu_control.o ../app/src/mcu_control.c 
	
${OBJECTDIR}/_ext/1819418535/measurements.o: ../app/src/measurements.c  .generated_files/flags/default/80d2290ebbc886c9b01c06118042b8d1cb713970 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1819418535" 
	@${RM} ${OBJECTDIR}/_ext/1819418535/measurements.o.d 
	@${RM} ${OBJECTDIR}/_ext/1819418535/measurements.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DLIQUID -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -I"../hardware/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1819418535/measurements.o.d" -MT "${OBJECTDIR}/_ext/1819418535/measurements.o.d" -MT ${OBJECTDIR}/_ext/1819418535/measurements.o -o ${OBJECTDIR}/_ext/1819418535/measurements.o ../app/src/measurements.c 
	
${OBJECTDIR}/_ext/1819418535/memory.o: ../app/src/memory.c  .generated_files/flags/default/7a76ac9eeef989d88a8d5eeb70488887e6dbfc7d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1819418535" 
	@${RM} ${OBJECTDIR}/_ext/1819418535/memory.o.d 
	@${RM} ${OBJECTDIR}/_ext/1819418535/memory.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DLIQUID -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -I"../hardware/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1819418535/memory.o.d" -MT "${OBJECTDIR}/_ext/1819418535/memory.o.d" -MT ${OBJECTDIR}/_ext/1819418535/memory.o -o ${OBJECTDIR}/_ext/1819418535/memory.o ../app/src/memory.c 
	
${OBJECTDIR}/_ext/1819418535/ext_settings.o: ../app/src/ext_settings.c  .generated_files/flags/default/6c911264f01f67a0de708940c16f27a475b91761 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1819418535" 
	@${RM} ${OBJECTDIR}/_ext/1819418535/ext_settings.o.d 
	@${RM} ${OBJECTDIR}/_ext/1819418535/ext_settings.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DLIQUID -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -I"../hardware/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1819418535/ext_settings.o.d" -MT "${OBJECTDIR}/_ext/1819418535/ext_settings.o.d" -MT ${OBJECTDIR}/_ext/1819418535/ext_settings.o -o ${OBJECTDIR}/_ext/1819418535/ext_settings.o ../app/src/ext_settings.c 
	
${OBJECTDIR}/_ext/1819418535/filter.o: ../app/src/filter.c  .generated_files/flags/default/723c40c5f7ef0441d7b17ce25053cb76bfcd4c48 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1819418535" 
	@${RM} ${OBJECTDIR}/_ext/1819418535/filter.o.d 
	@${RM} ${OBJECTDIR}/_ext/1819418535/filter.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DLIQUID -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -I"../hardware/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1819418535/filter.o.d" -MT "${OBJECTDIR}/_ext/1819418535/filter.o.d" -MT ${OBJECTDIR}/_ext/1819418535/filter.o -o ${OBJECTDIR}/_ext/1819418535/filter.o ../app/src/filter.c 
	
${OBJECTDIR}/_ext/1819418535/fan.o: ../app/src/fan.c  .generated_files/flags/default/3d65ffa6695226d85fc0ede17327c4e06254e283 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1819418535" 
	@${RM} ${OBJECTDIR}/_ext/1819418535/fan.o.d 
	@${RM} ${OBJECTDIR}/_ext/1819418535/fan.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DLIQUID -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -I"../hardware/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1819418535/fan.o.d" -MT "${OBJECTDIR}/_ext/1819418535/fan.o.d" -MT ${OBJECTDIR}/_ext/1819418535/fan.o -o ${OBJECTDIR}/_ext/1819418535/fan.o ../app/src/fan.c 
	
${OBJECTDIR}/_ext/321213250/adc.o: ../tinyAVR-1ser-drv/src/adc.c  .generated_files/flags/default/d53b8d242cd45b950e41b793c97d302e2ddcd6ac .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/321213250" 
	@${RM} ${OBJECTDIR}/_ext/321213250/adc.o.d 
	@${RM} ${OBJECTDIR}/_ext/321213250/adc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DLIQUID -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -I"../hardware/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/321213250/adc.o.d" -MT "${OBJECTDIR}/_ext/321213250/adc.o.d" -MT ${OBJECTDIR}/_ext/321213250/adc.o -o ${OBJECTDIR}/_ext/321213250/adc.o ../tinyAVR-1ser-drv/src/adc.c 
	
${OBJECTDIR}/_ext/321213250/clock.o: ../tinyAVR-1ser-drv/src/clock.c  .generated_files/flags/default/8e4511ea86b7fe3cc2225063900f3ed33d42790c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/321213250" 
	@${RM} ${OBJECTDIR}/_ext/321213250/clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/321213250/clock.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DLIQUID -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -I"../hardware/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/321213250/clock.o.d" -MT "${OBJECTDIR}/_ext/321213250/clock.o.d" -MT ${OBJECTDIR}/_ext/321213250/clock.o -o ${OBJECTDIR}/_ext/321213250/clock.o ../tinyAVR-1ser-drv/src/clock.c 
	
${OBJECTDIR}/_ext/321213250/eeprom.o: ../tinyAVR-1ser-drv/src/eeprom.c  .generated_files/flags/default/2e55f8d26d14cd4d571017e302115ab64eba78b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/321213250" 
	@${RM} ${OBJECTDIR}/_ext/321213250/eeprom.o.d 
	@${RM} ${OBJECTDIR}/_ext/321213250/eeprom.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DLIQUID -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -I"../hardware/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/321213250/eeprom.o.d" -MT "${OBJECTDIR}/_ext/321213250/eeprom.o.d" -MT ${OBJECTDIR}/_ext/321213250/eeprom.o -o ${OBJECTDIR}/_ext/321213250/eeprom.o ../tinyAVR-1ser-drv/src/eeprom.c 
	
${OBJECTDIR}/_ext/321213250/gpio.o: ../tinyAVR-1ser-drv/src/gpio.c  .generated_files/flags/default/c98a64142fbfd2fae731f49dc00f4bc7955294ce .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/321213250" 
	@${RM} ${OBJECTDIR}/_ext/321213250/gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/321213250/gpio.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DLIQUID -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -I"../hardware/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/321213250/gpio.o.d" -MT "${OBJECTDIR}/_ext/321213250/gpio.o.d" -MT ${OBJECTDIR}/_ext/321213250/gpio.o -o ${OBJECTDIR}/_ext/321213250/gpio.o ../tinyAVR-1ser-drv/src/gpio.c 
	
${OBJECTDIR}/_ext/321213250/mcu_options.o: ../tinyAVR-1ser-drv/src/mcu_options.c  .generated_files/flags/default/9ae515d1caac4aa05a4d9a872a44dbcf83336468 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/321213250" 
	@${RM} ${OBJECTDIR}/_ext/321213250/mcu_options.o.d 
	@${RM} ${OBJECTDIR}/_ext/321213250/mcu_options.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DLIQUID -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -I"../hardware/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/321213250/mcu_options.o.d" -MT "${OBJECTDIR}/_ext/321213250/mcu_options.o.d" -MT ${OBJECTDIR}/_ext/321213250/mcu_options.o -o ${OBJECTDIR}/_ext/321213250/mcu_options.o ../tinyAVR-1ser-drv/src/mcu_options.c 
	
${OBJECTDIR}/_ext/321213250/rtc.o: ../tinyAVR-1ser-drv/src/rtc.c  .generated_files/flags/default/81c823e9fc04d7f37d1d0036cd791ffa78d2c6a8 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/321213250" 
	@${RM} ${OBJECTDIR}/_ext/321213250/rtc.o.d 
	@${RM} ${OBJECTDIR}/_ext/321213250/rtc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DLIQUID -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -I"../hardware/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/321213250/rtc.o.d" -MT "${OBJECTDIR}/_ext/321213250/rtc.o.d" -MT ${OBJECTDIR}/_ext/321213250/rtc.o -o ${OBJECTDIR}/_ext/321213250/rtc.o ../tinyAVR-1ser-drv/src/rtc.c 
	
${OBJECTDIR}/_ext/321213250/spi.o: ../tinyAVR-1ser-drv/src/spi.c  .generated_files/flags/default/25e1b1685f323c39fa80ce1974281519a0e34ff8 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/321213250" 
	@${RM} ${OBJECTDIR}/_ext/321213250/spi.o.d 
	@${RM} ${OBJECTDIR}/_ext/321213250/spi.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DLIQUID -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -I"../hardware/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/321213250/spi.o.d" -MT "${OBJECTDIR}/_ext/321213250/spi.o.d" -MT ${OBJECTDIR}/_ext/321213250/spi.o -o ${OBJECTDIR}/_ext/321213250/spi.o ../tinyAVR-1ser-drv/src/spi.c 
	
${OBJECTDIR}/_ext/321213250/timer.o: ../tinyAVR-1ser-drv/src/timer.c  .generated_files/flags/default/924ba8460f12f9d02ca9603dcd195b6e633f2b09 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/321213250" 
	@${RM} ${OBJECTDIR}/_ext/321213250/timer.o.d 
	@${RM} ${OBJECTDIR}/_ext/321213250/timer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DLIQUID -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -I"../hardware/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/321213250/timer.o.d" -MT "${OBJECTDIR}/_ext/321213250/timer.o.d" -MT ${OBJECTDIR}/_ext/321213250/timer.o -o ${OBJECTDIR}/_ext/321213250/timer.o ../tinyAVR-1ser-drv/src/timer.c 
	
${OBJECTDIR}/_ext/321213250/usart.o: ../tinyAVR-1ser-drv/src/usart.c  .generated_files/flags/default/fe729d39c2ce1d0e8cfd0e14622c71a57ff574b2 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/321213250" 
	@${RM} ${OBJECTDIR}/_ext/321213250/usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/321213250/usart.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DLIQUID -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -I"../hardware/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/321213250/usart.o.d" -MT "${OBJECTDIR}/_ext/321213250/usart.o.d" -MT ${OBJECTDIR}/_ext/321213250/usart.o -o ${OBJECTDIR}/_ext/321213250/usart.o ../tinyAVR-1ser-drv/src/usart.c 
	
${OBJECTDIR}/_ext/321213250/watchdog.o: ../tinyAVR-1ser-drv/src/watchdog.c  .generated_files/flags/default/a96a3c21c996f5838d7e5dbaa4eab82e95a34390 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/321213250" 
	@${RM} ${OBJECTDIR}/_ext/321213250/watchdog.o.d 
	@${RM} ${OBJECTDIR}/_ext/321213250/watchdog.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DLIQUID -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -I"../hardware/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/321213250/watchdog.o.d" -MT "${OBJECTDIR}/_ext/321213250/watchdog.o.d" -MT ${OBJECTDIR}/_ext/321213250/watchdog.o -o ${OBJECTDIR}/_ext/321213250/watchdog.o ../tinyAVR-1ser-drv/src/watchdog.c 
	
${OBJECTDIR}/_ext/525381332/thermistor.o: ../hardware/src/thermistor.c  .generated_files/flags/default/3addac049e7554eda5c9d532ffbbec6ac7ca21d6 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/525381332" 
	@${RM} ${OBJECTDIR}/_ext/525381332/thermistor.o.d 
	@${RM} ${OBJECTDIR}/_ext/525381332/thermistor.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DLIQUID -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -I"../hardware/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/525381332/thermistor.o.d" -MT "${OBJECTDIR}/_ext/525381332/thermistor.o.d" -MT ${OBJECTDIR}/_ext/525381332/thermistor.o -o ${OBJECTDIR}/_ext/525381332/thermistor.o ../hardware/src/thermistor.c 
	
${OBJECTDIR}/_ext/2047881166/hw_wrap.o: ../hw-wrap/src/hw_wrap.c  .generated_files/flags/default/c5d689575e6c93eac27c7a14b99fd186b126d1d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2047881166" 
	@${RM} ${OBJECTDIR}/_ext/2047881166/hw_wrap.o.d 
	@${RM} ${OBJECTDIR}/_ext/2047881166/hw_wrap.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DLIQUID -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -I"../hardware/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/2047881166/hw_wrap.o.d" -MT "${OBJECTDIR}/_ext/2047881166/hw_wrap.o.d" -MT ${OBJECTDIR}/_ext/2047881166/hw_wrap.o -o ${OBJECTDIR}/_ext/2047881166/hw_wrap.o ../hw-wrap/src/hw_wrap.c 
	
${OBJECTDIR}/_ext/565612547/main.o: ../main/src/main.c  .generated_files/flags/default/598c2c2b7d069b11a172224ff9670c309dd5f188 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/565612547" 
	@${RM} ${OBJECTDIR}/_ext/565612547/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/565612547/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DLIQUID -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -I"../hardware/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/565612547/main.o.d" -MT "${OBJECTDIR}/_ext/565612547/main.o.d" -MT ${OBJECTDIR}/_ext/565612547/main.o -o ${OBJECTDIR}/_ext/565612547/main.o ../main/src/main.c 
	
else
${OBJECTDIR}/_ext/1819418535/delay.o: ../app/src/delay.c  .generated_files/flags/default/518727b16015c995578a365aee25569e3b5c7868 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1819418535" 
	@${RM} ${OBJECTDIR}/_ext/1819418535/delay.o.d 
	@${RM} ${OBJECTDIR}/_ext/1819418535/delay.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DLIQUID -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -I"../hardware/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1819418535/delay.o.d" -MT "${OBJECTDIR}/_ext/1819418535/delay.o.d" -MT ${OBJECTDIR}/_ext/1819418535/delay.o -o ${OBJECTDIR}/_ext/1819418535/delay.o ../app/src/delay.c 
	
${OBJECTDIR}/_ext/1819418535/mcu_control.o: ../app/src/mcu_control.c  .generated_files/flags/default/fcb00b9539b1856445ca6b2c82789c2f23064839 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1819418535" 
	@${RM} ${OBJECTDIR}/_ext/1819418535/mcu_control.o.d 
	@${RM} ${OBJECTDIR}/_ext/1819418535/mcu_control.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DLIQUID -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -I"../hardware/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1819418535/mcu_control.o.d" -MT "${OBJECTDIR}/_ext/1819418535/mcu_control.o.d" -MT ${OBJECTDIR}/_ext/1819418535/mcu_control.o -o ${OBJECTDIR}/_ext/1819418535/mcu_control.o ../app/src/mcu_control.c 
	
${OBJECTDIR}/_ext/1819418535/measurements.o: ../app/src/measurements.c  .generated_files/flags/default/8069ae363b1ea39401c1188eae0d2f14becd27a5 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1819418535" 
	@${RM} ${OBJECTDIR}/_ext/1819418535/measurements.o.d 
	@${RM} ${OBJECTDIR}/_ext/1819418535/measurements.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DLIQUID -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -I"../hardware/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1819418535/measurements.o.d" -MT "${OBJECTDIR}/_ext/1819418535/measurements.o.d" -MT ${OBJECTDIR}/_ext/1819418535/measurements.o -o ${OBJECTDIR}/_ext/1819418535/measurements.o ../app/src/measurements.c 
	
${OBJECTDIR}/_ext/1819418535/memory.o: ../app/src/memory.c  .generated_files/flags/default/8ab93e96b2641a660cd02411fb5cd949b942d3bc .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1819418535" 
	@${RM} ${OBJECTDIR}/_ext/1819418535/memory.o.d 
	@${RM} ${OBJECTDIR}/_ext/1819418535/memory.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DLIQUID -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -I"../hardware/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1819418535/memory.o.d" -MT "${OBJECTDIR}/_ext/1819418535/memory.o.d" -MT ${OBJECTDIR}/_ext/1819418535/memory.o -o ${OBJECTDIR}/_ext/1819418535/memory.o ../app/src/memory.c 
	
${OBJECTDIR}/_ext/1819418535/ext_settings.o: ../app/src/ext_settings.c  .generated_files/flags/default/865b40c81fa7d9c202fc3cde63460d9b55ba3746 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1819418535" 
	@${RM} ${OBJECTDIR}/_ext/1819418535/ext_settings.o.d 
	@${RM} ${OBJECTDIR}/_ext/1819418535/ext_settings.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DLIQUID -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -I"../hardware/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1819418535/ext_settings.o.d" -MT "${OBJECTDIR}/_ext/1819418535/ext_settings.o.d" -MT ${OBJECTDIR}/_ext/1819418535/ext_settings.o -o ${OBJECTDIR}/_ext/1819418535/ext_settings.o ../app/src/ext_settings.c 
	
${OBJECTDIR}/_ext/1819418535/filter.o: ../app/src/filter.c  .generated_files/flags/default/5d16c3d3dff1632fc67fcb546bcbfce77e78f336 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1819418535" 
	@${RM} ${OBJECTDIR}/_ext/1819418535/filter.o.d 
	@${RM} ${OBJECTDIR}/_ext/1819418535/filter.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DLIQUID -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -I"../hardware/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1819418535/filter.o.d" -MT "${OBJECTDIR}/_ext/1819418535/filter.o.d" -MT ${OBJECTDIR}/_ext/1819418535/filter.o -o ${OBJECTDIR}/_ext/1819418535/filter.o ../app/src/filter.c 
	
${OBJECTDIR}/_ext/1819418535/fan.o: ../app/src/fan.c  .generated_files/flags/default/6a36e79b51e958675642f9af3cefe5b6e30ce51 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1819418535" 
	@${RM} ${OBJECTDIR}/_ext/1819418535/fan.o.d 
	@${RM} ${OBJECTDIR}/_ext/1819418535/fan.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DLIQUID -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -I"../hardware/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1819418535/fan.o.d" -MT "${OBJECTDIR}/_ext/1819418535/fan.o.d" -MT ${OBJECTDIR}/_ext/1819418535/fan.o -o ${OBJECTDIR}/_ext/1819418535/fan.o ../app/src/fan.c 
	
${OBJECTDIR}/_ext/321213250/adc.o: ../tinyAVR-1ser-drv/src/adc.c  .generated_files/flags/default/ebd43a6c10785a0ad7c7709abb7c7dae8255d9c6 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/321213250" 
	@${RM} ${OBJECTDIR}/_ext/321213250/adc.o.d 
	@${RM} ${OBJECTDIR}/_ext/321213250/adc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DLIQUID -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -I"../hardware/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/321213250/adc.o.d" -MT "${OBJECTDIR}/_ext/321213250/adc.o.d" -MT ${OBJECTDIR}/_ext/321213250/adc.o -o ${OBJECTDIR}/_ext/321213250/adc.o ../tinyAVR-1ser-drv/src/adc.c 
	
${OBJECTDIR}/_ext/321213250/clock.o: ../tinyAVR-1ser-drv/src/clock.c  .generated_files/flags/default/a910e0b076cfe0e08897a201c31b472042e18a1 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/321213250" 
	@${RM} ${OBJECTDIR}/_ext/321213250/clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/321213250/clock.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DLIQUID -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -I"../hardware/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/321213250/clock.o.d" -MT "${OBJECTDIR}/_ext/321213250/clock.o.d" -MT ${OBJECTDIR}/_ext/321213250/clock.o -o ${OBJECTDIR}/_ext/321213250/clock.o ../tinyAVR-1ser-drv/src/clock.c 
	
${OBJECTDIR}/_ext/321213250/eeprom.o: ../tinyAVR-1ser-drv/src/eeprom.c  .generated_files/flags/default/f9fec16b5f79d845cb9c551d9ac036dbfaf14053 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/321213250" 
	@${RM} ${OBJECTDIR}/_ext/321213250/eeprom.o.d 
	@${RM} ${OBJECTDIR}/_ext/321213250/eeprom.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DLIQUID -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -I"../hardware/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/321213250/eeprom.o.d" -MT "${OBJECTDIR}/_ext/321213250/eeprom.o.d" -MT ${OBJECTDIR}/_ext/321213250/eeprom.o -o ${OBJECTDIR}/_ext/321213250/eeprom.o ../tinyAVR-1ser-drv/src/eeprom.c 
	
${OBJECTDIR}/_ext/321213250/gpio.o: ../tinyAVR-1ser-drv/src/gpio.c  .generated_files/flags/default/856ce24741b91a6f48687598d3a7f271bd3b7aed .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/321213250" 
	@${RM} ${OBJECTDIR}/_ext/321213250/gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/321213250/gpio.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DLIQUID -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -I"../hardware/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/321213250/gpio.o.d" -MT "${OBJECTDIR}/_ext/321213250/gpio.o.d" -MT ${OBJECTDIR}/_ext/321213250/gpio.o -o ${OBJECTDIR}/_ext/321213250/gpio.o ../tinyAVR-1ser-drv/src/gpio.c 
	
${OBJECTDIR}/_ext/321213250/mcu_options.o: ../tinyAVR-1ser-drv/src/mcu_options.c  .generated_files/flags/default/d8fbbeb2e6dbdf71b813714902168547a64edf43 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/321213250" 
	@${RM} ${OBJECTDIR}/_ext/321213250/mcu_options.o.d 
	@${RM} ${OBJECTDIR}/_ext/321213250/mcu_options.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DLIQUID -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -I"../hardware/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/321213250/mcu_options.o.d" -MT "${OBJECTDIR}/_ext/321213250/mcu_options.o.d" -MT ${OBJECTDIR}/_ext/321213250/mcu_options.o -o ${OBJECTDIR}/_ext/321213250/mcu_options.o ../tinyAVR-1ser-drv/src/mcu_options.c 
	
${OBJECTDIR}/_ext/321213250/rtc.o: ../tinyAVR-1ser-drv/src/rtc.c  .generated_files/flags/default/92116fad11f00229f42ccb918fd8f7f35b46a7d8 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/321213250" 
	@${RM} ${OBJECTDIR}/_ext/321213250/rtc.o.d 
	@${RM} ${OBJECTDIR}/_ext/321213250/rtc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DLIQUID -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -I"../hardware/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/321213250/rtc.o.d" -MT "${OBJECTDIR}/_ext/321213250/rtc.o.d" -MT ${OBJECTDIR}/_ext/321213250/rtc.o -o ${OBJECTDIR}/_ext/321213250/rtc.o ../tinyAVR-1ser-drv/src/rtc.c 
	
${OBJECTDIR}/_ext/321213250/spi.o: ../tinyAVR-1ser-drv/src/spi.c  .generated_files/flags/default/671bb7646f01239dfb869d84f88b1f4394f6dfbc .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/321213250" 
	@${RM} ${OBJECTDIR}/_ext/321213250/spi.o.d 
	@${RM} ${OBJECTDIR}/_ext/321213250/spi.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DLIQUID -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -I"../hardware/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/321213250/spi.o.d" -MT "${OBJECTDIR}/_ext/321213250/spi.o.d" -MT ${OBJECTDIR}/_ext/321213250/spi.o -o ${OBJECTDIR}/_ext/321213250/spi.o ../tinyAVR-1ser-drv/src/spi.c 
	
${OBJECTDIR}/_ext/321213250/timer.o: ../tinyAVR-1ser-drv/src/timer.c  .generated_files/flags/default/c25f689008810aaad7d6263b9721f0326a4ef6f2 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/321213250" 
	@${RM} ${OBJECTDIR}/_ext/321213250/timer.o.d 
	@${RM} ${OBJECTDIR}/_ext/321213250/timer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DLIQUID -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -I"../hardware/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/321213250/timer.o.d" -MT "${OBJECTDIR}/_ext/321213250/timer.o.d" -MT ${OBJECTDIR}/_ext/321213250/timer.o -o ${OBJECTDIR}/_ext/321213250/timer.o ../tinyAVR-1ser-drv/src/timer.c 
	
${OBJECTDIR}/_ext/321213250/usart.o: ../tinyAVR-1ser-drv/src/usart.c  .generated_files/flags/default/ab54a2feb1d3895f5d1fa981a58640bac161525b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/321213250" 
	@${RM} ${OBJECTDIR}/_ext/321213250/usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/321213250/usart.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DLIQUID -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -I"../hardware/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/321213250/usart.o.d" -MT "${OBJECTDIR}/_ext/321213250/usart.o.d" -MT ${OBJECTDIR}/_ext/321213250/usart.o -o ${OBJECTDIR}/_ext/321213250/usart.o ../tinyAVR-1ser-drv/src/usart.c 
	
${OBJECTDIR}/_ext/321213250/watchdog.o: ../tinyAVR-1ser-drv/src/watchdog.c  .generated_files/flags/default/9594a119cfa9aa2836f2e4a08817b31bf8430078 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/321213250" 
	@${RM} ${OBJECTDIR}/_ext/321213250/watchdog.o.d 
	@${RM} ${OBJECTDIR}/_ext/321213250/watchdog.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DLIQUID -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -I"../hardware/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/321213250/watchdog.o.d" -MT "${OBJECTDIR}/_ext/321213250/watchdog.o.d" -MT ${OBJECTDIR}/_ext/321213250/watchdog.o -o ${OBJECTDIR}/_ext/321213250/watchdog.o ../tinyAVR-1ser-drv/src/watchdog.c 
	
${OBJECTDIR}/_ext/525381332/thermistor.o: ../hardware/src/thermistor.c  .generated_files/flags/default/cd96588e643d97ad2f5fd2bb489affb35499551f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/525381332" 
	@${RM} ${OBJECTDIR}/_ext/525381332/thermistor.o.d 
	@${RM} ${OBJECTDIR}/_ext/525381332/thermistor.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DLIQUID -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -I"../hardware/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/525381332/thermistor.o.d" -MT "${OBJECTDIR}/_ext/525381332/thermistor.o.d" -MT ${OBJECTDIR}/_ext/525381332/thermistor.o -o ${OBJECTDIR}/_ext/525381332/thermistor.o ../hardware/src/thermistor.c 
	
${OBJECTDIR}/_ext/2047881166/hw_wrap.o: ../hw-wrap/src/hw_wrap.c  .generated_files/flags/default/aadee9343a2fbf9f59070b7c09b7c684e5a08406 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2047881166" 
	@${RM} ${OBJECTDIR}/_ext/2047881166/hw_wrap.o.d 
	@${RM} ${OBJECTDIR}/_ext/2047881166/hw_wrap.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DLIQUID -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -I"../hardware/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/2047881166/hw_wrap.o.d" -MT "${OBJECTDIR}/_ext/2047881166/hw_wrap.o.d" -MT ${OBJECTDIR}/_ext/2047881166/hw_wrap.o -o ${OBJECTDIR}/_ext/2047881166/hw_wrap.o ../hw-wrap/src/hw_wrap.c 
	
${OBJECTDIR}/_ext/565612547/main.o: ../main/src/main.c  .generated_files/flags/default/f38ce21131f22bfc319b176c3c8119ac71259798 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/565612547" 
	@${RM} ${OBJECTDIR}/_ext/565612547/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/565612547/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DLIQUID -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -I"../hardware/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/565612547/main.o.d" -MT "${OBJECTDIR}/_ext/565612547/main.o.d" -MT ${OBJECTDIR}/_ext/565612547/main.o -o ${OBJECTDIR}/_ext/565612547/main.o ../main/src/main.c 
	
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
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=${DISTDIR}/PROJ_DIR.${IMAGE_TYPE}.map  -D__DEBUG=1  -DXPRJ_default=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1   -mdfp="${DFP_DIR}/xc8"   -gdwarf-2 -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DLIQUID -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -I"../hardware/inc" -Wall -gdwarf-3 -mconst-data-in-progmem     $(COMPARISON_BUILD) -Wl,--memorysummary,${DISTDIR}/memoryfile.xml -o ${DISTDIR}/PROJ_DIR.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  -o ${DISTDIR}/PROJ_DIR.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -Wl,--start-group  -Wl,-lm -Wl,--end-group  -Wl,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1
	@${RM} ${DISTDIR}/PROJ_DIR.${IMAGE_TYPE}.hex 
	
else
${DISTDIR}/PROJ_DIR.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=${DISTDIR}/PROJ_DIR.${IMAGE_TYPE}.map  -DXPRJ_default=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DLIQUID -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -I"../hardware/inc" -Wall -gdwarf-3 -mconst-data-in-progmem     $(COMPARISON_BUILD) -Wl,--memorysummary,${DISTDIR}/memoryfile.xml -o ${DISTDIR}/PROJ_DIR.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  -o ${DISTDIR}/PROJ_DIR.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -Wl,--start-group  -Wl,-lm -Wl,--end-group 
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
