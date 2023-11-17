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
SOURCEFILES_QUOTED_IF_SPACED=../app/src/delay.c ../app/src/mcu_control.c ../app/src/measurements.c ../app/src/memory.c ../app/src/ext_settings.c ../app/src/pwm.c ../tinyAVR-1ser-drv/src/adc.c ../tinyAVR-1ser-drv/src/clock.c ../tinyAVR-1ser-drv/src/eeprom.c ../tinyAVR-1ser-drv/src/gpio.c ../tinyAVR-1ser-drv/src/mcu_options.c ../tinyAVR-1ser-drv/src/rtc.c ../tinyAVR-1ser-drv/src/spi.c ../tinyAVR-1ser-drv/src/timer.c ../tinyAVR-1ser-drv/src/usart.c ../tinyAVR-1ser-drv/src/watchdog.c ../hw-wrap/src/hw_wrap.c ../hw-wrap/src/thermistor.c ../main/src/main.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1819418535/delay.o ${OBJECTDIR}/_ext/1819418535/mcu_control.o ${OBJECTDIR}/_ext/1819418535/measurements.o ${OBJECTDIR}/_ext/1819418535/memory.o ${OBJECTDIR}/_ext/1819418535/ext_settings.o ${OBJECTDIR}/_ext/1819418535/pwm.o ${OBJECTDIR}/_ext/321213250/adc.o ${OBJECTDIR}/_ext/321213250/clock.o ${OBJECTDIR}/_ext/321213250/eeprom.o ${OBJECTDIR}/_ext/321213250/gpio.o ${OBJECTDIR}/_ext/321213250/mcu_options.o ${OBJECTDIR}/_ext/321213250/rtc.o ${OBJECTDIR}/_ext/321213250/spi.o ${OBJECTDIR}/_ext/321213250/timer.o ${OBJECTDIR}/_ext/321213250/usart.o ${OBJECTDIR}/_ext/321213250/watchdog.o ${OBJECTDIR}/_ext/2047881166/hw_wrap.o ${OBJECTDIR}/_ext/2047881166/thermistor.o ${OBJECTDIR}/_ext/565612547/main.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1819418535/delay.o.d ${OBJECTDIR}/_ext/1819418535/mcu_control.o.d ${OBJECTDIR}/_ext/1819418535/measurements.o.d ${OBJECTDIR}/_ext/1819418535/memory.o.d ${OBJECTDIR}/_ext/1819418535/ext_settings.o.d ${OBJECTDIR}/_ext/1819418535/pwm.o.d ${OBJECTDIR}/_ext/321213250/adc.o.d ${OBJECTDIR}/_ext/321213250/clock.o.d ${OBJECTDIR}/_ext/321213250/eeprom.o.d ${OBJECTDIR}/_ext/321213250/gpio.o.d ${OBJECTDIR}/_ext/321213250/mcu_options.o.d ${OBJECTDIR}/_ext/321213250/rtc.o.d ${OBJECTDIR}/_ext/321213250/spi.o.d ${OBJECTDIR}/_ext/321213250/timer.o.d ${OBJECTDIR}/_ext/321213250/usart.o.d ${OBJECTDIR}/_ext/321213250/watchdog.o.d ${OBJECTDIR}/_ext/2047881166/hw_wrap.o.d ${OBJECTDIR}/_ext/2047881166/thermistor.o.d ${OBJECTDIR}/_ext/565612547/main.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1819418535/delay.o ${OBJECTDIR}/_ext/1819418535/mcu_control.o ${OBJECTDIR}/_ext/1819418535/measurements.o ${OBJECTDIR}/_ext/1819418535/memory.o ${OBJECTDIR}/_ext/1819418535/ext_settings.o ${OBJECTDIR}/_ext/1819418535/pwm.o ${OBJECTDIR}/_ext/321213250/adc.o ${OBJECTDIR}/_ext/321213250/clock.o ${OBJECTDIR}/_ext/321213250/eeprom.o ${OBJECTDIR}/_ext/321213250/gpio.o ${OBJECTDIR}/_ext/321213250/mcu_options.o ${OBJECTDIR}/_ext/321213250/rtc.o ${OBJECTDIR}/_ext/321213250/spi.o ${OBJECTDIR}/_ext/321213250/timer.o ${OBJECTDIR}/_ext/321213250/usart.o ${OBJECTDIR}/_ext/321213250/watchdog.o ${OBJECTDIR}/_ext/2047881166/hw_wrap.o ${OBJECTDIR}/_ext/2047881166/thermistor.o ${OBJECTDIR}/_ext/565612547/main.o

# Source Files
SOURCEFILES=../app/src/delay.c ../app/src/mcu_control.c ../app/src/measurements.c ../app/src/memory.c ../app/src/ext_settings.c ../app/src/pwm.c ../tinyAVR-1ser-drv/src/adc.c ../tinyAVR-1ser-drv/src/clock.c ../tinyAVR-1ser-drv/src/eeprom.c ../tinyAVR-1ser-drv/src/gpio.c ../tinyAVR-1ser-drv/src/mcu_options.c ../tinyAVR-1ser-drv/src/rtc.c ../tinyAVR-1ser-drv/src/spi.c ../tinyAVR-1ser-drv/src/timer.c ../tinyAVR-1ser-drv/src/usart.c ../tinyAVR-1ser-drv/src/watchdog.c ../hw-wrap/src/hw_wrap.c ../hw-wrap/src/thermistor.c ../main/src/main.c



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
${OBJECTDIR}/_ext/1819418535/delay.o: ../app/src/delay.c  .generated_files/flags/default/81a7f65ef4ef8b8a480c21d1bdb6b89b993e9441 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1819418535" 
	@${RM} ${OBJECTDIR}/_ext/1819418535/delay.o.d 
	@${RM} ${OBJECTDIR}/_ext/1819418535/delay.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1819418535/delay.o.d" -MT "${OBJECTDIR}/_ext/1819418535/delay.o.d" -MT ${OBJECTDIR}/_ext/1819418535/delay.o -o ${OBJECTDIR}/_ext/1819418535/delay.o ../app/src/delay.c 
	
${OBJECTDIR}/_ext/1819418535/mcu_control.o: ../app/src/mcu_control.c  .generated_files/flags/default/a384fc1a408ad403a971fd81c29106649fa4bfa6 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1819418535" 
	@${RM} ${OBJECTDIR}/_ext/1819418535/mcu_control.o.d 
	@${RM} ${OBJECTDIR}/_ext/1819418535/mcu_control.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1819418535/mcu_control.o.d" -MT "${OBJECTDIR}/_ext/1819418535/mcu_control.o.d" -MT ${OBJECTDIR}/_ext/1819418535/mcu_control.o -o ${OBJECTDIR}/_ext/1819418535/mcu_control.o ../app/src/mcu_control.c 
	
${OBJECTDIR}/_ext/1819418535/measurements.o: ../app/src/measurements.c  .generated_files/flags/default/4b943f42f1618d7e8cdcbf6dd0d64e606be3d74d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1819418535" 
	@${RM} ${OBJECTDIR}/_ext/1819418535/measurements.o.d 
	@${RM} ${OBJECTDIR}/_ext/1819418535/measurements.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1819418535/measurements.o.d" -MT "${OBJECTDIR}/_ext/1819418535/measurements.o.d" -MT ${OBJECTDIR}/_ext/1819418535/measurements.o -o ${OBJECTDIR}/_ext/1819418535/measurements.o ../app/src/measurements.c 
	
${OBJECTDIR}/_ext/1819418535/memory.o: ../app/src/memory.c  .generated_files/flags/default/abdacded933cc99838387401d2b287814d88cd28 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1819418535" 
	@${RM} ${OBJECTDIR}/_ext/1819418535/memory.o.d 
	@${RM} ${OBJECTDIR}/_ext/1819418535/memory.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1819418535/memory.o.d" -MT "${OBJECTDIR}/_ext/1819418535/memory.o.d" -MT ${OBJECTDIR}/_ext/1819418535/memory.o -o ${OBJECTDIR}/_ext/1819418535/memory.o ../app/src/memory.c 
	
${OBJECTDIR}/_ext/1819418535/ext_settings.o: ../app/src/ext_settings.c  .generated_files/flags/default/2628f42e39bec3ae2e28c3c94c5d6694272a5b4e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1819418535" 
	@${RM} ${OBJECTDIR}/_ext/1819418535/ext_settings.o.d 
	@${RM} ${OBJECTDIR}/_ext/1819418535/ext_settings.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1819418535/ext_settings.o.d" -MT "${OBJECTDIR}/_ext/1819418535/ext_settings.o.d" -MT ${OBJECTDIR}/_ext/1819418535/ext_settings.o -o ${OBJECTDIR}/_ext/1819418535/ext_settings.o ../app/src/ext_settings.c 
	
${OBJECTDIR}/_ext/1819418535/pwm.o: ../app/src/pwm.c  .generated_files/flags/default/928e154c51541d0488414e287ee582d270f1b5e5 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1819418535" 
	@${RM} ${OBJECTDIR}/_ext/1819418535/pwm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1819418535/pwm.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1819418535/pwm.o.d" -MT "${OBJECTDIR}/_ext/1819418535/pwm.o.d" -MT ${OBJECTDIR}/_ext/1819418535/pwm.o -o ${OBJECTDIR}/_ext/1819418535/pwm.o ../app/src/pwm.c 
	
${OBJECTDIR}/_ext/321213250/adc.o: ../tinyAVR-1ser-drv/src/adc.c  .generated_files/flags/default/5ba453ac78893cc17499f62a277c921a8bd68448 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/321213250" 
	@${RM} ${OBJECTDIR}/_ext/321213250/adc.o.d 
	@${RM} ${OBJECTDIR}/_ext/321213250/adc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/321213250/adc.o.d" -MT "${OBJECTDIR}/_ext/321213250/adc.o.d" -MT ${OBJECTDIR}/_ext/321213250/adc.o -o ${OBJECTDIR}/_ext/321213250/adc.o ../tinyAVR-1ser-drv/src/adc.c 
	
${OBJECTDIR}/_ext/321213250/clock.o: ../tinyAVR-1ser-drv/src/clock.c  .generated_files/flags/default/9bafd1c74f1ece637ab3b7954e431b0826763eae .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/321213250" 
	@${RM} ${OBJECTDIR}/_ext/321213250/clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/321213250/clock.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/321213250/clock.o.d" -MT "${OBJECTDIR}/_ext/321213250/clock.o.d" -MT ${OBJECTDIR}/_ext/321213250/clock.o -o ${OBJECTDIR}/_ext/321213250/clock.o ../tinyAVR-1ser-drv/src/clock.c 
	
${OBJECTDIR}/_ext/321213250/eeprom.o: ../tinyAVR-1ser-drv/src/eeprom.c  .generated_files/flags/default/53d7f22eb6c9a60e19fd2798c2787fe16e4ff6c3 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/321213250" 
	@${RM} ${OBJECTDIR}/_ext/321213250/eeprom.o.d 
	@${RM} ${OBJECTDIR}/_ext/321213250/eeprom.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/321213250/eeprom.o.d" -MT "${OBJECTDIR}/_ext/321213250/eeprom.o.d" -MT ${OBJECTDIR}/_ext/321213250/eeprom.o -o ${OBJECTDIR}/_ext/321213250/eeprom.o ../tinyAVR-1ser-drv/src/eeprom.c 
	
${OBJECTDIR}/_ext/321213250/gpio.o: ../tinyAVR-1ser-drv/src/gpio.c  .generated_files/flags/default/930db925680ae6dddd4c966bb1c3e53e47ff6e0c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/321213250" 
	@${RM} ${OBJECTDIR}/_ext/321213250/gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/321213250/gpio.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/321213250/gpio.o.d" -MT "${OBJECTDIR}/_ext/321213250/gpio.o.d" -MT ${OBJECTDIR}/_ext/321213250/gpio.o -o ${OBJECTDIR}/_ext/321213250/gpio.o ../tinyAVR-1ser-drv/src/gpio.c 
	
${OBJECTDIR}/_ext/321213250/mcu_options.o: ../tinyAVR-1ser-drv/src/mcu_options.c  .generated_files/flags/default/bccf3839fdeba15cb8ded80b1386648df928f821 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/321213250" 
	@${RM} ${OBJECTDIR}/_ext/321213250/mcu_options.o.d 
	@${RM} ${OBJECTDIR}/_ext/321213250/mcu_options.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/321213250/mcu_options.o.d" -MT "${OBJECTDIR}/_ext/321213250/mcu_options.o.d" -MT ${OBJECTDIR}/_ext/321213250/mcu_options.o -o ${OBJECTDIR}/_ext/321213250/mcu_options.o ../tinyAVR-1ser-drv/src/mcu_options.c 
	
${OBJECTDIR}/_ext/321213250/rtc.o: ../tinyAVR-1ser-drv/src/rtc.c  .generated_files/flags/default/bf0918b03d2263ffb7e43e4b749a228209502dac .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/321213250" 
	@${RM} ${OBJECTDIR}/_ext/321213250/rtc.o.d 
	@${RM} ${OBJECTDIR}/_ext/321213250/rtc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/321213250/rtc.o.d" -MT "${OBJECTDIR}/_ext/321213250/rtc.o.d" -MT ${OBJECTDIR}/_ext/321213250/rtc.o -o ${OBJECTDIR}/_ext/321213250/rtc.o ../tinyAVR-1ser-drv/src/rtc.c 
	
${OBJECTDIR}/_ext/321213250/spi.o: ../tinyAVR-1ser-drv/src/spi.c  .generated_files/flags/default/e3a47eb27067acea717401d063e55bd380644207 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/321213250" 
	@${RM} ${OBJECTDIR}/_ext/321213250/spi.o.d 
	@${RM} ${OBJECTDIR}/_ext/321213250/spi.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/321213250/spi.o.d" -MT "${OBJECTDIR}/_ext/321213250/spi.o.d" -MT ${OBJECTDIR}/_ext/321213250/spi.o -o ${OBJECTDIR}/_ext/321213250/spi.o ../tinyAVR-1ser-drv/src/spi.c 
	
${OBJECTDIR}/_ext/321213250/timer.o: ../tinyAVR-1ser-drv/src/timer.c  .generated_files/flags/default/9d4bcafc8644e13982957da473fae77a037e995 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/321213250" 
	@${RM} ${OBJECTDIR}/_ext/321213250/timer.o.d 
	@${RM} ${OBJECTDIR}/_ext/321213250/timer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/321213250/timer.o.d" -MT "${OBJECTDIR}/_ext/321213250/timer.o.d" -MT ${OBJECTDIR}/_ext/321213250/timer.o -o ${OBJECTDIR}/_ext/321213250/timer.o ../tinyAVR-1ser-drv/src/timer.c 
	
${OBJECTDIR}/_ext/321213250/usart.o: ../tinyAVR-1ser-drv/src/usart.c  .generated_files/flags/default/c105bd289e17a1e673a89c94fc485d78243be8d8 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/321213250" 
	@${RM} ${OBJECTDIR}/_ext/321213250/usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/321213250/usart.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/321213250/usart.o.d" -MT "${OBJECTDIR}/_ext/321213250/usart.o.d" -MT ${OBJECTDIR}/_ext/321213250/usart.o -o ${OBJECTDIR}/_ext/321213250/usart.o ../tinyAVR-1ser-drv/src/usart.c 
	
${OBJECTDIR}/_ext/321213250/watchdog.o: ../tinyAVR-1ser-drv/src/watchdog.c  .generated_files/flags/default/bbd4ae1801763f064722483380f37dc4f7c4b93d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/321213250" 
	@${RM} ${OBJECTDIR}/_ext/321213250/watchdog.o.d 
	@${RM} ${OBJECTDIR}/_ext/321213250/watchdog.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/321213250/watchdog.o.d" -MT "${OBJECTDIR}/_ext/321213250/watchdog.o.d" -MT ${OBJECTDIR}/_ext/321213250/watchdog.o -o ${OBJECTDIR}/_ext/321213250/watchdog.o ../tinyAVR-1ser-drv/src/watchdog.c 
	
${OBJECTDIR}/_ext/2047881166/hw_wrap.o: ../hw-wrap/src/hw_wrap.c  .generated_files/flags/default/e99b99f7d58ac64345dcd0bad37a4a7277c2ff08 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2047881166" 
	@${RM} ${OBJECTDIR}/_ext/2047881166/hw_wrap.o.d 
	@${RM} ${OBJECTDIR}/_ext/2047881166/hw_wrap.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/2047881166/hw_wrap.o.d" -MT "${OBJECTDIR}/_ext/2047881166/hw_wrap.o.d" -MT ${OBJECTDIR}/_ext/2047881166/hw_wrap.o -o ${OBJECTDIR}/_ext/2047881166/hw_wrap.o ../hw-wrap/src/hw_wrap.c 
	
${OBJECTDIR}/_ext/2047881166/thermistor.o: ../hw-wrap/src/thermistor.c  .generated_files/flags/default/c5b844989c416a28fdee665908d16b6f2707373e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2047881166" 
	@${RM} ${OBJECTDIR}/_ext/2047881166/thermistor.o.d 
	@${RM} ${OBJECTDIR}/_ext/2047881166/thermistor.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/2047881166/thermistor.o.d" -MT "${OBJECTDIR}/_ext/2047881166/thermistor.o.d" -MT ${OBJECTDIR}/_ext/2047881166/thermistor.o -o ${OBJECTDIR}/_ext/2047881166/thermistor.o ../hw-wrap/src/thermistor.c 
	
${OBJECTDIR}/_ext/565612547/main.o: ../main/src/main.c  .generated_files/flags/default/aaab24e73ffdb95d87889ff6073f7effc5a34ce4 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/565612547" 
	@${RM} ${OBJECTDIR}/_ext/565612547/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/565612547/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/565612547/main.o.d" -MT "${OBJECTDIR}/_ext/565612547/main.o.d" -MT ${OBJECTDIR}/_ext/565612547/main.o -o ${OBJECTDIR}/_ext/565612547/main.o ../main/src/main.c 
	
else
${OBJECTDIR}/_ext/1819418535/delay.o: ../app/src/delay.c  .generated_files/flags/default/fa0448b863e35e2971cf4e9869febfeeed05e48c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1819418535" 
	@${RM} ${OBJECTDIR}/_ext/1819418535/delay.o.d 
	@${RM} ${OBJECTDIR}/_ext/1819418535/delay.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1819418535/delay.o.d" -MT "${OBJECTDIR}/_ext/1819418535/delay.o.d" -MT ${OBJECTDIR}/_ext/1819418535/delay.o -o ${OBJECTDIR}/_ext/1819418535/delay.o ../app/src/delay.c 
	
${OBJECTDIR}/_ext/1819418535/mcu_control.o: ../app/src/mcu_control.c  .generated_files/flags/default/596b6f3eb2794f99821c89caf52dc4db27767607 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1819418535" 
	@${RM} ${OBJECTDIR}/_ext/1819418535/mcu_control.o.d 
	@${RM} ${OBJECTDIR}/_ext/1819418535/mcu_control.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1819418535/mcu_control.o.d" -MT "${OBJECTDIR}/_ext/1819418535/mcu_control.o.d" -MT ${OBJECTDIR}/_ext/1819418535/mcu_control.o -o ${OBJECTDIR}/_ext/1819418535/mcu_control.o ../app/src/mcu_control.c 
	
${OBJECTDIR}/_ext/1819418535/measurements.o: ../app/src/measurements.c  .generated_files/flags/default/c74b118a5d09952f83331625508e5a154c927b0c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1819418535" 
	@${RM} ${OBJECTDIR}/_ext/1819418535/measurements.o.d 
	@${RM} ${OBJECTDIR}/_ext/1819418535/measurements.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1819418535/measurements.o.d" -MT "${OBJECTDIR}/_ext/1819418535/measurements.o.d" -MT ${OBJECTDIR}/_ext/1819418535/measurements.o -o ${OBJECTDIR}/_ext/1819418535/measurements.o ../app/src/measurements.c 
	
${OBJECTDIR}/_ext/1819418535/memory.o: ../app/src/memory.c  .generated_files/flags/default/f850e7ef318e68ba028d31b4f1180b97c50146e1 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1819418535" 
	@${RM} ${OBJECTDIR}/_ext/1819418535/memory.o.d 
	@${RM} ${OBJECTDIR}/_ext/1819418535/memory.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1819418535/memory.o.d" -MT "${OBJECTDIR}/_ext/1819418535/memory.o.d" -MT ${OBJECTDIR}/_ext/1819418535/memory.o -o ${OBJECTDIR}/_ext/1819418535/memory.o ../app/src/memory.c 
	
${OBJECTDIR}/_ext/1819418535/ext_settings.o: ../app/src/ext_settings.c  .generated_files/flags/default/5e1d90dd3461743ea9acd77761c669d794d90c41 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1819418535" 
	@${RM} ${OBJECTDIR}/_ext/1819418535/ext_settings.o.d 
	@${RM} ${OBJECTDIR}/_ext/1819418535/ext_settings.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1819418535/ext_settings.o.d" -MT "${OBJECTDIR}/_ext/1819418535/ext_settings.o.d" -MT ${OBJECTDIR}/_ext/1819418535/ext_settings.o -o ${OBJECTDIR}/_ext/1819418535/ext_settings.o ../app/src/ext_settings.c 
	
${OBJECTDIR}/_ext/1819418535/pwm.o: ../app/src/pwm.c  .generated_files/flags/default/6d6a29586754335d3cd8d7f146169b9ba3fe055e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1819418535" 
	@${RM} ${OBJECTDIR}/_ext/1819418535/pwm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1819418535/pwm.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1819418535/pwm.o.d" -MT "${OBJECTDIR}/_ext/1819418535/pwm.o.d" -MT ${OBJECTDIR}/_ext/1819418535/pwm.o -o ${OBJECTDIR}/_ext/1819418535/pwm.o ../app/src/pwm.c 
	
${OBJECTDIR}/_ext/321213250/adc.o: ../tinyAVR-1ser-drv/src/adc.c  .generated_files/flags/default/9fa42f3a4204f5f00f82a2fb5e2b54497c309043 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/321213250" 
	@${RM} ${OBJECTDIR}/_ext/321213250/adc.o.d 
	@${RM} ${OBJECTDIR}/_ext/321213250/adc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/321213250/adc.o.d" -MT "${OBJECTDIR}/_ext/321213250/adc.o.d" -MT ${OBJECTDIR}/_ext/321213250/adc.o -o ${OBJECTDIR}/_ext/321213250/adc.o ../tinyAVR-1ser-drv/src/adc.c 
	
${OBJECTDIR}/_ext/321213250/clock.o: ../tinyAVR-1ser-drv/src/clock.c  .generated_files/flags/default/6a8cc9d5fc8e43d4c0a58c44f714c41629421314 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/321213250" 
	@${RM} ${OBJECTDIR}/_ext/321213250/clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/321213250/clock.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/321213250/clock.o.d" -MT "${OBJECTDIR}/_ext/321213250/clock.o.d" -MT ${OBJECTDIR}/_ext/321213250/clock.o -o ${OBJECTDIR}/_ext/321213250/clock.o ../tinyAVR-1ser-drv/src/clock.c 
	
${OBJECTDIR}/_ext/321213250/eeprom.o: ../tinyAVR-1ser-drv/src/eeprom.c  .generated_files/flags/default/f8ba69c6b8ba3305e4875ef9f6072574c1bddae .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/321213250" 
	@${RM} ${OBJECTDIR}/_ext/321213250/eeprom.o.d 
	@${RM} ${OBJECTDIR}/_ext/321213250/eeprom.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/321213250/eeprom.o.d" -MT "${OBJECTDIR}/_ext/321213250/eeprom.o.d" -MT ${OBJECTDIR}/_ext/321213250/eeprom.o -o ${OBJECTDIR}/_ext/321213250/eeprom.o ../tinyAVR-1ser-drv/src/eeprom.c 
	
${OBJECTDIR}/_ext/321213250/gpio.o: ../tinyAVR-1ser-drv/src/gpio.c  .generated_files/flags/default/db7b982e0282448be1d7ba56438af52469b8fe19 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/321213250" 
	@${RM} ${OBJECTDIR}/_ext/321213250/gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/321213250/gpio.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/321213250/gpio.o.d" -MT "${OBJECTDIR}/_ext/321213250/gpio.o.d" -MT ${OBJECTDIR}/_ext/321213250/gpio.o -o ${OBJECTDIR}/_ext/321213250/gpio.o ../tinyAVR-1ser-drv/src/gpio.c 
	
${OBJECTDIR}/_ext/321213250/mcu_options.o: ../tinyAVR-1ser-drv/src/mcu_options.c  .generated_files/flags/default/70f9be34e7cb603b79ec3d7eac5b0bf08a70cca .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/321213250" 
	@${RM} ${OBJECTDIR}/_ext/321213250/mcu_options.o.d 
	@${RM} ${OBJECTDIR}/_ext/321213250/mcu_options.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/321213250/mcu_options.o.d" -MT "${OBJECTDIR}/_ext/321213250/mcu_options.o.d" -MT ${OBJECTDIR}/_ext/321213250/mcu_options.o -o ${OBJECTDIR}/_ext/321213250/mcu_options.o ../tinyAVR-1ser-drv/src/mcu_options.c 
	
${OBJECTDIR}/_ext/321213250/rtc.o: ../tinyAVR-1ser-drv/src/rtc.c  .generated_files/flags/default/472107cd251df1ef0e3b52768486ba9b282e0754 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/321213250" 
	@${RM} ${OBJECTDIR}/_ext/321213250/rtc.o.d 
	@${RM} ${OBJECTDIR}/_ext/321213250/rtc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/321213250/rtc.o.d" -MT "${OBJECTDIR}/_ext/321213250/rtc.o.d" -MT ${OBJECTDIR}/_ext/321213250/rtc.o -o ${OBJECTDIR}/_ext/321213250/rtc.o ../tinyAVR-1ser-drv/src/rtc.c 
	
${OBJECTDIR}/_ext/321213250/spi.o: ../tinyAVR-1ser-drv/src/spi.c  .generated_files/flags/default/e40a58da50f9a1c20d4d8d26a37171f34a4220c8 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/321213250" 
	@${RM} ${OBJECTDIR}/_ext/321213250/spi.o.d 
	@${RM} ${OBJECTDIR}/_ext/321213250/spi.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/321213250/spi.o.d" -MT "${OBJECTDIR}/_ext/321213250/spi.o.d" -MT ${OBJECTDIR}/_ext/321213250/spi.o -o ${OBJECTDIR}/_ext/321213250/spi.o ../tinyAVR-1ser-drv/src/spi.c 
	
${OBJECTDIR}/_ext/321213250/timer.o: ../tinyAVR-1ser-drv/src/timer.c  .generated_files/flags/default/645420223995f26dae0b63d024562169656b92c2 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/321213250" 
	@${RM} ${OBJECTDIR}/_ext/321213250/timer.o.d 
	@${RM} ${OBJECTDIR}/_ext/321213250/timer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/321213250/timer.o.d" -MT "${OBJECTDIR}/_ext/321213250/timer.o.d" -MT ${OBJECTDIR}/_ext/321213250/timer.o -o ${OBJECTDIR}/_ext/321213250/timer.o ../tinyAVR-1ser-drv/src/timer.c 
	
${OBJECTDIR}/_ext/321213250/usart.o: ../tinyAVR-1ser-drv/src/usart.c  .generated_files/flags/default/9bdfb3e69188f118d857facbef0764e7ca2b926f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/321213250" 
	@${RM} ${OBJECTDIR}/_ext/321213250/usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/321213250/usart.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/321213250/usart.o.d" -MT "${OBJECTDIR}/_ext/321213250/usart.o.d" -MT ${OBJECTDIR}/_ext/321213250/usart.o -o ${OBJECTDIR}/_ext/321213250/usart.o ../tinyAVR-1ser-drv/src/usart.c 
	
${OBJECTDIR}/_ext/321213250/watchdog.o: ../tinyAVR-1ser-drv/src/watchdog.c  .generated_files/flags/default/b6c6880a87415073abaed2b0ad664db6422e6c5f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/321213250" 
	@${RM} ${OBJECTDIR}/_ext/321213250/watchdog.o.d 
	@${RM} ${OBJECTDIR}/_ext/321213250/watchdog.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/321213250/watchdog.o.d" -MT "${OBJECTDIR}/_ext/321213250/watchdog.o.d" -MT ${OBJECTDIR}/_ext/321213250/watchdog.o -o ${OBJECTDIR}/_ext/321213250/watchdog.o ../tinyAVR-1ser-drv/src/watchdog.c 
	
${OBJECTDIR}/_ext/2047881166/hw_wrap.o: ../hw-wrap/src/hw_wrap.c  .generated_files/flags/default/cd00a2226246f2bd7eabc366bb2da5620c670575 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2047881166" 
	@${RM} ${OBJECTDIR}/_ext/2047881166/hw_wrap.o.d 
	@${RM} ${OBJECTDIR}/_ext/2047881166/hw_wrap.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/2047881166/hw_wrap.o.d" -MT "${OBJECTDIR}/_ext/2047881166/hw_wrap.o.d" -MT ${OBJECTDIR}/_ext/2047881166/hw_wrap.o -o ${OBJECTDIR}/_ext/2047881166/hw_wrap.o ../hw-wrap/src/hw_wrap.c 
	
${OBJECTDIR}/_ext/2047881166/thermistor.o: ../hw-wrap/src/thermistor.c  .generated_files/flags/default/7f0ac50bc924c8a97dcbc5ad0d1bc375c9d2eef8 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2047881166" 
	@${RM} ${OBJECTDIR}/_ext/2047881166/thermistor.o.d 
	@${RM} ${OBJECTDIR}/_ext/2047881166/thermistor.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/2047881166/thermistor.o.d" -MT "${OBJECTDIR}/_ext/2047881166/thermistor.o.d" -MT ${OBJECTDIR}/_ext/2047881166/thermistor.o -o ${OBJECTDIR}/_ext/2047881166/thermistor.o ../hw-wrap/src/thermistor.c 
	
${OBJECTDIR}/_ext/565612547/main.o: ../main/src/main.c  .generated_files/flags/default/c1d882173dde2d9eaf80028c7a22eacb356a2b11 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/565612547" 
	@${RM} ${OBJECTDIR}/_ext/565612547/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/565612547/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/565612547/main.o.d" -MT "${OBJECTDIR}/_ext/565612547/main.o.d" -MT ${OBJECTDIR}/_ext/565612547/main.o -o ${OBJECTDIR}/_ext/565612547/main.o ../main/src/main.c 
	
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
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=${DISTDIR}/PROJ_DIR.${IMAGE_TYPE}.map  -D__DEBUG=1  -DXPRJ_default=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1   -mdfp="${DFP_DIR}/xc8"   -gdwarf-2 -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -Wall -gdwarf-3 -mconst-data-in-progmem     $(COMPARISON_BUILD) -Wl,--memorysummary,${DISTDIR}/memoryfile.xml -o ${DISTDIR}/PROJ_DIR.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  -o ${DISTDIR}/PROJ_DIR.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -Wl,--start-group  -Wl,-lm -Wl,--end-group  -Wl,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1
	@${RM} ${DISTDIR}/PROJ_DIR.${IMAGE_TYPE}.hex 
	
else
${DISTDIR}/PROJ_DIR.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=${DISTDIR}/PROJ_DIR.${IMAGE_TYPE}.map  -DXPRJ_default=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -Wall -gdwarf-3 -mconst-data-in-progmem     $(COMPARISON_BUILD) -Wl,--memorysummary,${DISTDIR}/memoryfile.xml -o ${DISTDIR}/PROJ_DIR.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  -o ${DISTDIR}/PROJ_DIR.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -Wl,--start-group  -Wl,-lm -Wl,--end-group 
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
