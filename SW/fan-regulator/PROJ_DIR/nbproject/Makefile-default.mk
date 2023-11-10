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
SOURCEFILES_QUOTED_IF_SPACED=../app/src/delay.c ../app/src/mcu_control.c ../app/src/measurements.c ../app/src/memory.c ../drivers/src/adc.c ../drivers/src/clock.c ../drivers/src/eeprom.c ../drivers/src/gpio.c ../drivers/src/mcu_options.c ../drivers/src/timer.c ../drivers/src/watchdog.c ../drivers/src/spi.c ../hw-wrap/src/hw_wrap.c ../main/src/main.c ../app/src/ext_settings.c ../app/src/pwm.c ../drivers/src/thermistor_table.c ../drivers/src/usart.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1819418535/delay.o ${OBJECTDIR}/_ext/1819418535/mcu_control.o ${OBJECTDIR}/_ext/1819418535/measurements.o ${OBJECTDIR}/_ext/1819418535/memory.o ${OBJECTDIR}/_ext/649243985/adc.o ${OBJECTDIR}/_ext/649243985/clock.o ${OBJECTDIR}/_ext/649243985/eeprom.o ${OBJECTDIR}/_ext/649243985/gpio.o ${OBJECTDIR}/_ext/649243985/mcu_options.o ${OBJECTDIR}/_ext/649243985/timer.o ${OBJECTDIR}/_ext/649243985/watchdog.o ${OBJECTDIR}/_ext/649243985/spi.o ${OBJECTDIR}/_ext/2047881166/hw_wrap.o ${OBJECTDIR}/_ext/565612547/main.o ${OBJECTDIR}/_ext/1819418535/ext_settings.o ${OBJECTDIR}/_ext/1819418535/pwm.o ${OBJECTDIR}/_ext/649243985/thermistor_table.o ${OBJECTDIR}/_ext/649243985/usart.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1819418535/delay.o.d ${OBJECTDIR}/_ext/1819418535/mcu_control.o.d ${OBJECTDIR}/_ext/1819418535/measurements.o.d ${OBJECTDIR}/_ext/1819418535/memory.o.d ${OBJECTDIR}/_ext/649243985/adc.o.d ${OBJECTDIR}/_ext/649243985/clock.o.d ${OBJECTDIR}/_ext/649243985/eeprom.o.d ${OBJECTDIR}/_ext/649243985/gpio.o.d ${OBJECTDIR}/_ext/649243985/mcu_options.o.d ${OBJECTDIR}/_ext/649243985/timer.o.d ${OBJECTDIR}/_ext/649243985/watchdog.o.d ${OBJECTDIR}/_ext/649243985/spi.o.d ${OBJECTDIR}/_ext/2047881166/hw_wrap.o.d ${OBJECTDIR}/_ext/565612547/main.o.d ${OBJECTDIR}/_ext/1819418535/ext_settings.o.d ${OBJECTDIR}/_ext/1819418535/pwm.o.d ${OBJECTDIR}/_ext/649243985/thermistor_table.o.d ${OBJECTDIR}/_ext/649243985/usart.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1819418535/delay.o ${OBJECTDIR}/_ext/1819418535/mcu_control.o ${OBJECTDIR}/_ext/1819418535/measurements.o ${OBJECTDIR}/_ext/1819418535/memory.o ${OBJECTDIR}/_ext/649243985/adc.o ${OBJECTDIR}/_ext/649243985/clock.o ${OBJECTDIR}/_ext/649243985/eeprom.o ${OBJECTDIR}/_ext/649243985/gpio.o ${OBJECTDIR}/_ext/649243985/mcu_options.o ${OBJECTDIR}/_ext/649243985/timer.o ${OBJECTDIR}/_ext/649243985/watchdog.o ${OBJECTDIR}/_ext/649243985/spi.o ${OBJECTDIR}/_ext/2047881166/hw_wrap.o ${OBJECTDIR}/_ext/565612547/main.o ${OBJECTDIR}/_ext/1819418535/ext_settings.o ${OBJECTDIR}/_ext/1819418535/pwm.o ${OBJECTDIR}/_ext/649243985/thermistor_table.o ${OBJECTDIR}/_ext/649243985/usart.o

# Source Files
SOURCEFILES=../app/src/delay.c ../app/src/mcu_control.c ../app/src/measurements.c ../app/src/memory.c ../drivers/src/adc.c ../drivers/src/clock.c ../drivers/src/eeprom.c ../drivers/src/gpio.c ../drivers/src/mcu_options.c ../drivers/src/timer.c ../drivers/src/watchdog.c ../drivers/src/spi.c ../hw-wrap/src/hw_wrap.c ../main/src/main.c ../app/src/ext_settings.c ../app/src/pwm.c ../drivers/src/thermistor_table.c ../drivers/src/usart.c



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
${OBJECTDIR}/_ext/1819418535/delay.o: ../app/src/delay.c  .generated_files/flags/default/e2522f0b45c74b7fe4d181bb33ff61c96589faa4 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1819418535" 
	@${RM} ${OBJECTDIR}/_ext/1819418535/delay.o.d 
	@${RM} ${OBJECTDIR}/_ext/1819418535/delay.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -I"../app/inc" -I"../drivers/inc" -I"../hw-wrap/inc" -I"../main/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1819418535/delay.o.d" -MT "${OBJECTDIR}/_ext/1819418535/delay.o.d" -MT ${OBJECTDIR}/_ext/1819418535/delay.o -o ${OBJECTDIR}/_ext/1819418535/delay.o ../app/src/delay.c 
	
${OBJECTDIR}/_ext/1819418535/mcu_control.o: ../app/src/mcu_control.c  .generated_files/flags/default/aa39e04533ecc4c4af7261a2796b1b57ad0975c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1819418535" 
	@${RM} ${OBJECTDIR}/_ext/1819418535/mcu_control.o.d 
	@${RM} ${OBJECTDIR}/_ext/1819418535/mcu_control.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -I"../app/inc" -I"../drivers/inc" -I"../hw-wrap/inc" -I"../main/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1819418535/mcu_control.o.d" -MT "${OBJECTDIR}/_ext/1819418535/mcu_control.o.d" -MT ${OBJECTDIR}/_ext/1819418535/mcu_control.o -o ${OBJECTDIR}/_ext/1819418535/mcu_control.o ../app/src/mcu_control.c 
	
${OBJECTDIR}/_ext/1819418535/measurements.o: ../app/src/measurements.c  .generated_files/flags/default/909b9555f173295d97d05a31abb0010691647fae .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1819418535" 
	@${RM} ${OBJECTDIR}/_ext/1819418535/measurements.o.d 
	@${RM} ${OBJECTDIR}/_ext/1819418535/measurements.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -I"../app/inc" -I"../drivers/inc" -I"../hw-wrap/inc" -I"../main/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1819418535/measurements.o.d" -MT "${OBJECTDIR}/_ext/1819418535/measurements.o.d" -MT ${OBJECTDIR}/_ext/1819418535/measurements.o -o ${OBJECTDIR}/_ext/1819418535/measurements.o ../app/src/measurements.c 
	
${OBJECTDIR}/_ext/1819418535/memory.o: ../app/src/memory.c  .generated_files/flags/default/3370d8cfe45a18db6bbda03fe8002f763a1cdf60 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1819418535" 
	@${RM} ${OBJECTDIR}/_ext/1819418535/memory.o.d 
	@${RM} ${OBJECTDIR}/_ext/1819418535/memory.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -I"../app/inc" -I"../drivers/inc" -I"../hw-wrap/inc" -I"../main/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1819418535/memory.o.d" -MT "${OBJECTDIR}/_ext/1819418535/memory.o.d" -MT ${OBJECTDIR}/_ext/1819418535/memory.o -o ${OBJECTDIR}/_ext/1819418535/memory.o ../app/src/memory.c 
	
${OBJECTDIR}/_ext/649243985/adc.o: ../drivers/src/adc.c  .generated_files/flags/default/b432e0b5d0592c9081da22498a3586b6c70ce463 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/649243985" 
	@${RM} ${OBJECTDIR}/_ext/649243985/adc.o.d 
	@${RM} ${OBJECTDIR}/_ext/649243985/adc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -I"../app/inc" -I"../drivers/inc" -I"../hw-wrap/inc" -I"../main/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/649243985/adc.o.d" -MT "${OBJECTDIR}/_ext/649243985/adc.o.d" -MT ${OBJECTDIR}/_ext/649243985/adc.o -o ${OBJECTDIR}/_ext/649243985/adc.o ../drivers/src/adc.c 
	
${OBJECTDIR}/_ext/649243985/clock.o: ../drivers/src/clock.c  .generated_files/flags/default/d18cd5372e6e4079dbc9c9af6e928e3c0b28720b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/649243985" 
	@${RM} ${OBJECTDIR}/_ext/649243985/clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/649243985/clock.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -I"../app/inc" -I"../drivers/inc" -I"../hw-wrap/inc" -I"../main/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/649243985/clock.o.d" -MT "${OBJECTDIR}/_ext/649243985/clock.o.d" -MT ${OBJECTDIR}/_ext/649243985/clock.o -o ${OBJECTDIR}/_ext/649243985/clock.o ../drivers/src/clock.c 
	
${OBJECTDIR}/_ext/649243985/eeprom.o: ../drivers/src/eeprom.c  .generated_files/flags/default/3a94764e9cfb7f821b5896585e295f037192ba79 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/649243985" 
	@${RM} ${OBJECTDIR}/_ext/649243985/eeprom.o.d 
	@${RM} ${OBJECTDIR}/_ext/649243985/eeprom.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -I"../app/inc" -I"../drivers/inc" -I"../hw-wrap/inc" -I"../main/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/649243985/eeprom.o.d" -MT "${OBJECTDIR}/_ext/649243985/eeprom.o.d" -MT ${OBJECTDIR}/_ext/649243985/eeprom.o -o ${OBJECTDIR}/_ext/649243985/eeprom.o ../drivers/src/eeprom.c 
	
${OBJECTDIR}/_ext/649243985/gpio.o: ../drivers/src/gpio.c  .generated_files/flags/default/f8bd98df47d612b59e986a7d660404f02cff189e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/649243985" 
	@${RM} ${OBJECTDIR}/_ext/649243985/gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/649243985/gpio.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -I"../app/inc" -I"../drivers/inc" -I"../hw-wrap/inc" -I"../main/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/649243985/gpio.o.d" -MT "${OBJECTDIR}/_ext/649243985/gpio.o.d" -MT ${OBJECTDIR}/_ext/649243985/gpio.o -o ${OBJECTDIR}/_ext/649243985/gpio.o ../drivers/src/gpio.c 
	
${OBJECTDIR}/_ext/649243985/mcu_options.o: ../drivers/src/mcu_options.c  .generated_files/flags/default/cb987c7c6f46aad9a1d1875daad0b80908aea27 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/649243985" 
	@${RM} ${OBJECTDIR}/_ext/649243985/mcu_options.o.d 
	@${RM} ${OBJECTDIR}/_ext/649243985/mcu_options.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -I"../app/inc" -I"../drivers/inc" -I"../hw-wrap/inc" -I"../main/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/649243985/mcu_options.o.d" -MT "${OBJECTDIR}/_ext/649243985/mcu_options.o.d" -MT ${OBJECTDIR}/_ext/649243985/mcu_options.o -o ${OBJECTDIR}/_ext/649243985/mcu_options.o ../drivers/src/mcu_options.c 
	
${OBJECTDIR}/_ext/649243985/timer.o: ../drivers/src/timer.c  .generated_files/flags/default/32f1ee6dbbe8703125a44542e4fb927628f79321 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/649243985" 
	@${RM} ${OBJECTDIR}/_ext/649243985/timer.o.d 
	@${RM} ${OBJECTDIR}/_ext/649243985/timer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -I"../app/inc" -I"../drivers/inc" -I"../hw-wrap/inc" -I"../main/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/649243985/timer.o.d" -MT "${OBJECTDIR}/_ext/649243985/timer.o.d" -MT ${OBJECTDIR}/_ext/649243985/timer.o -o ${OBJECTDIR}/_ext/649243985/timer.o ../drivers/src/timer.c 
	
${OBJECTDIR}/_ext/649243985/watchdog.o: ../drivers/src/watchdog.c  .generated_files/flags/default/565c8a56f86bc342a0b90679d6c44ff51a7683eb .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/649243985" 
	@${RM} ${OBJECTDIR}/_ext/649243985/watchdog.o.d 
	@${RM} ${OBJECTDIR}/_ext/649243985/watchdog.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -I"../app/inc" -I"../drivers/inc" -I"../hw-wrap/inc" -I"../main/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/649243985/watchdog.o.d" -MT "${OBJECTDIR}/_ext/649243985/watchdog.o.d" -MT ${OBJECTDIR}/_ext/649243985/watchdog.o -o ${OBJECTDIR}/_ext/649243985/watchdog.o ../drivers/src/watchdog.c 
	
${OBJECTDIR}/_ext/649243985/spi.o: ../drivers/src/spi.c  .generated_files/flags/default/3b80b82a6922455edcf035971ef7516cceec1cea .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/649243985" 
	@${RM} ${OBJECTDIR}/_ext/649243985/spi.o.d 
	@${RM} ${OBJECTDIR}/_ext/649243985/spi.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -I"../app/inc" -I"../drivers/inc" -I"../hw-wrap/inc" -I"../main/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/649243985/spi.o.d" -MT "${OBJECTDIR}/_ext/649243985/spi.o.d" -MT ${OBJECTDIR}/_ext/649243985/spi.o -o ${OBJECTDIR}/_ext/649243985/spi.o ../drivers/src/spi.c 
	
${OBJECTDIR}/_ext/2047881166/hw_wrap.o: ../hw-wrap/src/hw_wrap.c  .generated_files/flags/default/ab763b14c9d4a5336ec5915250b28bc32e81a6d4 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2047881166" 
	@${RM} ${OBJECTDIR}/_ext/2047881166/hw_wrap.o.d 
	@${RM} ${OBJECTDIR}/_ext/2047881166/hw_wrap.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -I"../app/inc" -I"../drivers/inc" -I"../hw-wrap/inc" -I"../main/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/2047881166/hw_wrap.o.d" -MT "${OBJECTDIR}/_ext/2047881166/hw_wrap.o.d" -MT ${OBJECTDIR}/_ext/2047881166/hw_wrap.o -o ${OBJECTDIR}/_ext/2047881166/hw_wrap.o ../hw-wrap/src/hw_wrap.c 
	
${OBJECTDIR}/_ext/565612547/main.o: ../main/src/main.c  .generated_files/flags/default/6658a3edbe5b5c22068b005b570b402ae3889d59 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/565612547" 
	@${RM} ${OBJECTDIR}/_ext/565612547/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/565612547/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -I"../app/inc" -I"../drivers/inc" -I"../hw-wrap/inc" -I"../main/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/565612547/main.o.d" -MT "${OBJECTDIR}/_ext/565612547/main.o.d" -MT ${OBJECTDIR}/_ext/565612547/main.o -o ${OBJECTDIR}/_ext/565612547/main.o ../main/src/main.c 
	
${OBJECTDIR}/_ext/1819418535/ext_settings.o: ../app/src/ext_settings.c  .generated_files/flags/default/c0e2bd03367ff835ac3c2afc4368bab62bd18ae8 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1819418535" 
	@${RM} ${OBJECTDIR}/_ext/1819418535/ext_settings.o.d 
	@${RM} ${OBJECTDIR}/_ext/1819418535/ext_settings.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -I"../app/inc" -I"../drivers/inc" -I"../hw-wrap/inc" -I"../main/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1819418535/ext_settings.o.d" -MT "${OBJECTDIR}/_ext/1819418535/ext_settings.o.d" -MT ${OBJECTDIR}/_ext/1819418535/ext_settings.o -o ${OBJECTDIR}/_ext/1819418535/ext_settings.o ../app/src/ext_settings.c 
	
${OBJECTDIR}/_ext/1819418535/pwm.o: ../app/src/pwm.c  .generated_files/flags/default/ab5f6cdb3c8c49b258781658661a50e85133caa5 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1819418535" 
	@${RM} ${OBJECTDIR}/_ext/1819418535/pwm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1819418535/pwm.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -I"../app/inc" -I"../drivers/inc" -I"../hw-wrap/inc" -I"../main/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1819418535/pwm.o.d" -MT "${OBJECTDIR}/_ext/1819418535/pwm.o.d" -MT ${OBJECTDIR}/_ext/1819418535/pwm.o -o ${OBJECTDIR}/_ext/1819418535/pwm.o ../app/src/pwm.c 
	
${OBJECTDIR}/_ext/649243985/thermistor_table.o: ../drivers/src/thermistor_table.c  .generated_files/flags/default/e1991a383ebadf1219d52051c2bad8a3703cd394 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/649243985" 
	@${RM} ${OBJECTDIR}/_ext/649243985/thermistor_table.o.d 
	@${RM} ${OBJECTDIR}/_ext/649243985/thermistor_table.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -I"../app/inc" -I"../drivers/inc" -I"../hw-wrap/inc" -I"../main/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/649243985/thermistor_table.o.d" -MT "${OBJECTDIR}/_ext/649243985/thermistor_table.o.d" -MT ${OBJECTDIR}/_ext/649243985/thermistor_table.o -o ${OBJECTDIR}/_ext/649243985/thermistor_table.o ../drivers/src/thermistor_table.c 
	
${OBJECTDIR}/_ext/649243985/usart.o: ../drivers/src/usart.c  .generated_files/flags/default/39b1a3fb4c59976c953535feac0ee8875668fbaf .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/649243985" 
	@${RM} ${OBJECTDIR}/_ext/649243985/usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/649243985/usart.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -I"../app/inc" -I"../drivers/inc" -I"../hw-wrap/inc" -I"../main/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/649243985/usart.o.d" -MT "${OBJECTDIR}/_ext/649243985/usart.o.d" -MT ${OBJECTDIR}/_ext/649243985/usart.o -o ${OBJECTDIR}/_ext/649243985/usart.o ../drivers/src/usart.c 
	
else
${OBJECTDIR}/_ext/1819418535/delay.o: ../app/src/delay.c  .generated_files/flags/default/fadcc2e4ac79c7ca304bee37ee2100ae8c74e02a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1819418535" 
	@${RM} ${OBJECTDIR}/_ext/1819418535/delay.o.d 
	@${RM} ${OBJECTDIR}/_ext/1819418535/delay.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -I"../app/inc" -I"../drivers/inc" -I"../hw-wrap/inc" -I"../main/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1819418535/delay.o.d" -MT "${OBJECTDIR}/_ext/1819418535/delay.o.d" -MT ${OBJECTDIR}/_ext/1819418535/delay.o -o ${OBJECTDIR}/_ext/1819418535/delay.o ../app/src/delay.c 
	
${OBJECTDIR}/_ext/1819418535/mcu_control.o: ../app/src/mcu_control.c  .generated_files/flags/default/c124bff6a7143f49b2ad9a319876edf2c68c4903 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1819418535" 
	@${RM} ${OBJECTDIR}/_ext/1819418535/mcu_control.o.d 
	@${RM} ${OBJECTDIR}/_ext/1819418535/mcu_control.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -I"../app/inc" -I"../drivers/inc" -I"../hw-wrap/inc" -I"../main/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1819418535/mcu_control.o.d" -MT "${OBJECTDIR}/_ext/1819418535/mcu_control.o.d" -MT ${OBJECTDIR}/_ext/1819418535/mcu_control.o -o ${OBJECTDIR}/_ext/1819418535/mcu_control.o ../app/src/mcu_control.c 
	
${OBJECTDIR}/_ext/1819418535/measurements.o: ../app/src/measurements.c  .generated_files/flags/default/e3a8518366ab1af6a6a7d2b983841246cacacd06 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1819418535" 
	@${RM} ${OBJECTDIR}/_ext/1819418535/measurements.o.d 
	@${RM} ${OBJECTDIR}/_ext/1819418535/measurements.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -I"../app/inc" -I"../drivers/inc" -I"../hw-wrap/inc" -I"../main/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1819418535/measurements.o.d" -MT "${OBJECTDIR}/_ext/1819418535/measurements.o.d" -MT ${OBJECTDIR}/_ext/1819418535/measurements.o -o ${OBJECTDIR}/_ext/1819418535/measurements.o ../app/src/measurements.c 
	
${OBJECTDIR}/_ext/1819418535/memory.o: ../app/src/memory.c  .generated_files/flags/default/6db7178f2aac01cccdabd860e42db46289af57ad .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1819418535" 
	@${RM} ${OBJECTDIR}/_ext/1819418535/memory.o.d 
	@${RM} ${OBJECTDIR}/_ext/1819418535/memory.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -I"../app/inc" -I"../drivers/inc" -I"../hw-wrap/inc" -I"../main/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1819418535/memory.o.d" -MT "${OBJECTDIR}/_ext/1819418535/memory.o.d" -MT ${OBJECTDIR}/_ext/1819418535/memory.o -o ${OBJECTDIR}/_ext/1819418535/memory.o ../app/src/memory.c 
	
${OBJECTDIR}/_ext/649243985/adc.o: ../drivers/src/adc.c  .generated_files/flags/default/4409fb0cea7c5b8fee35e59c577c276893a87aa7 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/649243985" 
	@${RM} ${OBJECTDIR}/_ext/649243985/adc.o.d 
	@${RM} ${OBJECTDIR}/_ext/649243985/adc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -I"../app/inc" -I"../drivers/inc" -I"../hw-wrap/inc" -I"../main/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/649243985/adc.o.d" -MT "${OBJECTDIR}/_ext/649243985/adc.o.d" -MT ${OBJECTDIR}/_ext/649243985/adc.o -o ${OBJECTDIR}/_ext/649243985/adc.o ../drivers/src/adc.c 
	
${OBJECTDIR}/_ext/649243985/clock.o: ../drivers/src/clock.c  .generated_files/flags/default/96c57d9324092618c50271e28ebd51fcd7191114 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/649243985" 
	@${RM} ${OBJECTDIR}/_ext/649243985/clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/649243985/clock.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -I"../app/inc" -I"../drivers/inc" -I"../hw-wrap/inc" -I"../main/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/649243985/clock.o.d" -MT "${OBJECTDIR}/_ext/649243985/clock.o.d" -MT ${OBJECTDIR}/_ext/649243985/clock.o -o ${OBJECTDIR}/_ext/649243985/clock.o ../drivers/src/clock.c 
	
${OBJECTDIR}/_ext/649243985/eeprom.o: ../drivers/src/eeprom.c  .generated_files/flags/default/f42eb811880ac20f783b8bc16913c4d0cf6e1924 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/649243985" 
	@${RM} ${OBJECTDIR}/_ext/649243985/eeprom.o.d 
	@${RM} ${OBJECTDIR}/_ext/649243985/eeprom.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -I"../app/inc" -I"../drivers/inc" -I"../hw-wrap/inc" -I"../main/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/649243985/eeprom.o.d" -MT "${OBJECTDIR}/_ext/649243985/eeprom.o.d" -MT ${OBJECTDIR}/_ext/649243985/eeprom.o -o ${OBJECTDIR}/_ext/649243985/eeprom.o ../drivers/src/eeprom.c 
	
${OBJECTDIR}/_ext/649243985/gpio.o: ../drivers/src/gpio.c  .generated_files/flags/default/7a447c3278dc8512128ade5562fba4b3f866fe52 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/649243985" 
	@${RM} ${OBJECTDIR}/_ext/649243985/gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/649243985/gpio.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -I"../app/inc" -I"../drivers/inc" -I"../hw-wrap/inc" -I"../main/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/649243985/gpio.o.d" -MT "${OBJECTDIR}/_ext/649243985/gpio.o.d" -MT ${OBJECTDIR}/_ext/649243985/gpio.o -o ${OBJECTDIR}/_ext/649243985/gpio.o ../drivers/src/gpio.c 
	
${OBJECTDIR}/_ext/649243985/mcu_options.o: ../drivers/src/mcu_options.c  .generated_files/flags/default/8890ff0a87eeb9d39468b8c668ea4590e5b3ca9 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/649243985" 
	@${RM} ${OBJECTDIR}/_ext/649243985/mcu_options.o.d 
	@${RM} ${OBJECTDIR}/_ext/649243985/mcu_options.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -I"../app/inc" -I"../drivers/inc" -I"../hw-wrap/inc" -I"../main/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/649243985/mcu_options.o.d" -MT "${OBJECTDIR}/_ext/649243985/mcu_options.o.d" -MT ${OBJECTDIR}/_ext/649243985/mcu_options.o -o ${OBJECTDIR}/_ext/649243985/mcu_options.o ../drivers/src/mcu_options.c 
	
${OBJECTDIR}/_ext/649243985/timer.o: ../drivers/src/timer.c  .generated_files/flags/default/1cd03000a1afa1bd6ce6ff90187b45daa9516b33 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/649243985" 
	@${RM} ${OBJECTDIR}/_ext/649243985/timer.o.d 
	@${RM} ${OBJECTDIR}/_ext/649243985/timer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -I"../app/inc" -I"../drivers/inc" -I"../hw-wrap/inc" -I"../main/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/649243985/timer.o.d" -MT "${OBJECTDIR}/_ext/649243985/timer.o.d" -MT ${OBJECTDIR}/_ext/649243985/timer.o -o ${OBJECTDIR}/_ext/649243985/timer.o ../drivers/src/timer.c 
	
${OBJECTDIR}/_ext/649243985/watchdog.o: ../drivers/src/watchdog.c  .generated_files/flags/default/95a51ccd5297aa43b21aa378f29c221e99dba5f2 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/649243985" 
	@${RM} ${OBJECTDIR}/_ext/649243985/watchdog.o.d 
	@${RM} ${OBJECTDIR}/_ext/649243985/watchdog.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -I"../app/inc" -I"../drivers/inc" -I"../hw-wrap/inc" -I"../main/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/649243985/watchdog.o.d" -MT "${OBJECTDIR}/_ext/649243985/watchdog.o.d" -MT ${OBJECTDIR}/_ext/649243985/watchdog.o -o ${OBJECTDIR}/_ext/649243985/watchdog.o ../drivers/src/watchdog.c 
	
${OBJECTDIR}/_ext/649243985/spi.o: ../drivers/src/spi.c  .generated_files/flags/default/e1ddd8e3a51c9965a6e830cbf5a0f1ac58879558 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/649243985" 
	@${RM} ${OBJECTDIR}/_ext/649243985/spi.o.d 
	@${RM} ${OBJECTDIR}/_ext/649243985/spi.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -I"../app/inc" -I"../drivers/inc" -I"../hw-wrap/inc" -I"../main/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/649243985/spi.o.d" -MT "${OBJECTDIR}/_ext/649243985/spi.o.d" -MT ${OBJECTDIR}/_ext/649243985/spi.o -o ${OBJECTDIR}/_ext/649243985/spi.o ../drivers/src/spi.c 
	
${OBJECTDIR}/_ext/2047881166/hw_wrap.o: ../hw-wrap/src/hw_wrap.c  .generated_files/flags/default/1e76e48045075d1eec03dfa3f29af6287db8d41b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2047881166" 
	@${RM} ${OBJECTDIR}/_ext/2047881166/hw_wrap.o.d 
	@${RM} ${OBJECTDIR}/_ext/2047881166/hw_wrap.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -I"../app/inc" -I"../drivers/inc" -I"../hw-wrap/inc" -I"../main/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/2047881166/hw_wrap.o.d" -MT "${OBJECTDIR}/_ext/2047881166/hw_wrap.o.d" -MT ${OBJECTDIR}/_ext/2047881166/hw_wrap.o -o ${OBJECTDIR}/_ext/2047881166/hw_wrap.o ../hw-wrap/src/hw_wrap.c 
	
${OBJECTDIR}/_ext/565612547/main.o: ../main/src/main.c  .generated_files/flags/default/6f798e08084c324708601d050307cb4b1f4a8413 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/565612547" 
	@${RM} ${OBJECTDIR}/_ext/565612547/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/565612547/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -I"../app/inc" -I"../drivers/inc" -I"../hw-wrap/inc" -I"../main/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/565612547/main.o.d" -MT "${OBJECTDIR}/_ext/565612547/main.o.d" -MT ${OBJECTDIR}/_ext/565612547/main.o -o ${OBJECTDIR}/_ext/565612547/main.o ../main/src/main.c 
	
${OBJECTDIR}/_ext/1819418535/ext_settings.o: ../app/src/ext_settings.c  .generated_files/flags/default/c23bddfdb96a9495e819c70b9fa15cf37ef253ad .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1819418535" 
	@${RM} ${OBJECTDIR}/_ext/1819418535/ext_settings.o.d 
	@${RM} ${OBJECTDIR}/_ext/1819418535/ext_settings.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -I"../app/inc" -I"../drivers/inc" -I"../hw-wrap/inc" -I"../main/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1819418535/ext_settings.o.d" -MT "${OBJECTDIR}/_ext/1819418535/ext_settings.o.d" -MT ${OBJECTDIR}/_ext/1819418535/ext_settings.o -o ${OBJECTDIR}/_ext/1819418535/ext_settings.o ../app/src/ext_settings.c 
	
${OBJECTDIR}/_ext/1819418535/pwm.o: ../app/src/pwm.c  .generated_files/flags/default/ec43ad13700843363493cd97810de324e594c915 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1819418535" 
	@${RM} ${OBJECTDIR}/_ext/1819418535/pwm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1819418535/pwm.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -I"../app/inc" -I"../drivers/inc" -I"../hw-wrap/inc" -I"../main/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1819418535/pwm.o.d" -MT "${OBJECTDIR}/_ext/1819418535/pwm.o.d" -MT ${OBJECTDIR}/_ext/1819418535/pwm.o -o ${OBJECTDIR}/_ext/1819418535/pwm.o ../app/src/pwm.c 
	
${OBJECTDIR}/_ext/649243985/thermistor_table.o: ../drivers/src/thermistor_table.c  .generated_files/flags/default/56193fc54c2cebbb2310caab39f8f1e3b1536ad5 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/649243985" 
	@${RM} ${OBJECTDIR}/_ext/649243985/thermistor_table.o.d 
	@${RM} ${OBJECTDIR}/_ext/649243985/thermistor_table.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -I"../app/inc" -I"../drivers/inc" -I"../hw-wrap/inc" -I"../main/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/649243985/thermistor_table.o.d" -MT "${OBJECTDIR}/_ext/649243985/thermistor_table.o.d" -MT ${OBJECTDIR}/_ext/649243985/thermistor_table.o -o ${OBJECTDIR}/_ext/649243985/thermistor_table.o ../drivers/src/thermistor_table.c 
	
${OBJECTDIR}/_ext/649243985/usart.o: ../drivers/src/usart.c  .generated_files/flags/default/63c3fd7d0ecded7068dbd92f593215e4028d0da0 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/649243985" 
	@${RM} ${OBJECTDIR}/_ext/649243985/usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/649243985/usart.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -I"../app/inc" -I"../drivers/inc" -I"../hw-wrap/inc" -I"../main/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/649243985/usart.o.d" -MT "${OBJECTDIR}/_ext/649243985/usart.o.d" -MT ${OBJECTDIR}/_ext/649243985/usart.o -o ${OBJECTDIR}/_ext/649243985/usart.o ../drivers/src/usart.c 
	
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
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=${DISTDIR}/PROJ_DIR.${IMAGE_TYPE}.map  -D__DEBUG=1  -DXPRJ_default=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1   -mdfp="${DFP_DIR}/xc8"   -gdwarf-2 -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -I"../app/inc" -I"../drivers/inc" -I"../hw-wrap/inc" -I"../main/inc" -Wall -gdwarf-3 -mconst-data-in-progmem     $(COMPARISON_BUILD) -Wl,--memorysummary,${DISTDIR}/memoryfile.xml -o ${DISTDIR}/PROJ_DIR.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  -o ${DISTDIR}/PROJ_DIR.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -Wl,--start-group  -Wl,-lm -Wl,--end-group  -Wl,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1
	@${RM} ${DISTDIR}/PROJ_DIR.${IMAGE_TYPE}.hex 
	
else
${DISTDIR}/PROJ_DIR.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=${DISTDIR}/PROJ_DIR.${IMAGE_TYPE}.map  -DXPRJ_default=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -I"../app/inc" -I"../drivers/inc" -I"../hw-wrap/inc" -I"../main/inc" -Wall -gdwarf-3 -mconst-data-in-progmem     $(COMPARISON_BUILD) -Wl,--memorysummary,${DISTDIR}/memoryfile.xml -o ${DISTDIR}/PROJ_DIR.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  -o ${DISTDIR}/PROJ_DIR.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -Wl,--start-group  -Wl,-lm -Wl,--end-group 
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
