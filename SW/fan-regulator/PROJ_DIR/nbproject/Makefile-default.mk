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
COMPARISON_BUILD=-mafrlcsj
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
${OBJECTDIR}/_ext/1819418535/delay.o: ../app/src/delay.c  .generated_files/flags/default/a4c8ddbe6298f241162cc1c6830d5171f751f44d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1819418535" 
	@${RM} ${OBJECTDIR}/_ext/1819418535/delay.o.d 
	@${RM} ${OBJECTDIR}/_ext/1819418535/delay.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DBASEMENT -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -I"../hardware/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1819418535/delay.o.d" -MT "${OBJECTDIR}/_ext/1819418535/delay.o.d" -MT ${OBJECTDIR}/_ext/1819418535/delay.o -o ${OBJECTDIR}/_ext/1819418535/delay.o ../app/src/delay.c 
	
${OBJECTDIR}/_ext/1819418535/mcu_control.o: ../app/src/mcu_control.c  .generated_files/flags/default/d8e9eeb51404fb4bb2f20c047f77340e1ac9b744 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1819418535" 
	@${RM} ${OBJECTDIR}/_ext/1819418535/mcu_control.o.d 
	@${RM} ${OBJECTDIR}/_ext/1819418535/mcu_control.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DBASEMENT -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -I"../hardware/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1819418535/mcu_control.o.d" -MT "${OBJECTDIR}/_ext/1819418535/mcu_control.o.d" -MT ${OBJECTDIR}/_ext/1819418535/mcu_control.o -o ${OBJECTDIR}/_ext/1819418535/mcu_control.o ../app/src/mcu_control.c 
	
${OBJECTDIR}/_ext/1819418535/measurements.o: ../app/src/measurements.c  .generated_files/flags/default/104ad4ac21e44d790e7d357b391834fa44f96a44 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1819418535" 
	@${RM} ${OBJECTDIR}/_ext/1819418535/measurements.o.d 
	@${RM} ${OBJECTDIR}/_ext/1819418535/measurements.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DBASEMENT -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -I"../hardware/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1819418535/measurements.o.d" -MT "${OBJECTDIR}/_ext/1819418535/measurements.o.d" -MT ${OBJECTDIR}/_ext/1819418535/measurements.o -o ${OBJECTDIR}/_ext/1819418535/measurements.o ../app/src/measurements.c 
	
${OBJECTDIR}/_ext/1819418535/memory.o: ../app/src/memory.c  .generated_files/flags/default/f572d9c84a9a662c4e7d5e14fc039d28cf3e570e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1819418535" 
	@${RM} ${OBJECTDIR}/_ext/1819418535/memory.o.d 
	@${RM} ${OBJECTDIR}/_ext/1819418535/memory.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DBASEMENT -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -I"../hardware/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1819418535/memory.o.d" -MT "${OBJECTDIR}/_ext/1819418535/memory.o.d" -MT ${OBJECTDIR}/_ext/1819418535/memory.o -o ${OBJECTDIR}/_ext/1819418535/memory.o ../app/src/memory.c 
	
${OBJECTDIR}/_ext/1819418535/ext_settings.o: ../app/src/ext_settings.c  .generated_files/flags/default/6bd7fd04942c01772f5c0fbb7f18f056a523193a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1819418535" 
	@${RM} ${OBJECTDIR}/_ext/1819418535/ext_settings.o.d 
	@${RM} ${OBJECTDIR}/_ext/1819418535/ext_settings.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DBASEMENT -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -I"../hardware/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1819418535/ext_settings.o.d" -MT "${OBJECTDIR}/_ext/1819418535/ext_settings.o.d" -MT ${OBJECTDIR}/_ext/1819418535/ext_settings.o -o ${OBJECTDIR}/_ext/1819418535/ext_settings.o ../app/src/ext_settings.c 
	
${OBJECTDIR}/_ext/1819418535/filter.o: ../app/src/filter.c  .generated_files/flags/default/693a385743acaf5ba18ed08e5b3485123a1aff0 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1819418535" 
	@${RM} ${OBJECTDIR}/_ext/1819418535/filter.o.d 
	@${RM} ${OBJECTDIR}/_ext/1819418535/filter.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DBASEMENT -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -I"../hardware/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1819418535/filter.o.d" -MT "${OBJECTDIR}/_ext/1819418535/filter.o.d" -MT ${OBJECTDIR}/_ext/1819418535/filter.o -o ${OBJECTDIR}/_ext/1819418535/filter.o ../app/src/filter.c 
	
${OBJECTDIR}/_ext/1819418535/fan.o: ../app/src/fan.c  .generated_files/flags/default/641f4ba2513edfac1203bcccab9907eb1b2aaf6c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1819418535" 
	@${RM} ${OBJECTDIR}/_ext/1819418535/fan.o.d 
	@${RM} ${OBJECTDIR}/_ext/1819418535/fan.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DBASEMENT -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -I"../hardware/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1819418535/fan.o.d" -MT "${OBJECTDIR}/_ext/1819418535/fan.o.d" -MT ${OBJECTDIR}/_ext/1819418535/fan.o -o ${OBJECTDIR}/_ext/1819418535/fan.o ../app/src/fan.c 
	
${OBJECTDIR}/_ext/321213250/adc.o: ../tinyAVR-1ser-drv/src/adc.c  .generated_files/flags/default/d4ea919a8c1e58cc3b17f9e913d51d3863ec1f5d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/321213250" 
	@${RM} ${OBJECTDIR}/_ext/321213250/adc.o.d 
	@${RM} ${OBJECTDIR}/_ext/321213250/adc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DBASEMENT -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -I"../hardware/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/321213250/adc.o.d" -MT "${OBJECTDIR}/_ext/321213250/adc.o.d" -MT ${OBJECTDIR}/_ext/321213250/adc.o -o ${OBJECTDIR}/_ext/321213250/adc.o ../tinyAVR-1ser-drv/src/adc.c 
	
${OBJECTDIR}/_ext/321213250/clock.o: ../tinyAVR-1ser-drv/src/clock.c  .generated_files/flags/default/7f94671505b5267f9831705f4cc39e2461312e9e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/321213250" 
	@${RM} ${OBJECTDIR}/_ext/321213250/clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/321213250/clock.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DBASEMENT -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -I"../hardware/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/321213250/clock.o.d" -MT "${OBJECTDIR}/_ext/321213250/clock.o.d" -MT ${OBJECTDIR}/_ext/321213250/clock.o -o ${OBJECTDIR}/_ext/321213250/clock.o ../tinyAVR-1ser-drv/src/clock.c 
	
${OBJECTDIR}/_ext/321213250/eeprom.o: ../tinyAVR-1ser-drv/src/eeprom.c  .generated_files/flags/default/45b6e445d52e9f534dcab767ea86c36a60f59663 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/321213250" 
	@${RM} ${OBJECTDIR}/_ext/321213250/eeprom.o.d 
	@${RM} ${OBJECTDIR}/_ext/321213250/eeprom.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DBASEMENT -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -I"../hardware/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/321213250/eeprom.o.d" -MT "${OBJECTDIR}/_ext/321213250/eeprom.o.d" -MT ${OBJECTDIR}/_ext/321213250/eeprom.o -o ${OBJECTDIR}/_ext/321213250/eeprom.o ../tinyAVR-1ser-drv/src/eeprom.c 
	
${OBJECTDIR}/_ext/321213250/gpio.o: ../tinyAVR-1ser-drv/src/gpio.c  .generated_files/flags/default/dfd19e7d7d7350999ce38991ab451004a9194536 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/321213250" 
	@${RM} ${OBJECTDIR}/_ext/321213250/gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/321213250/gpio.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DBASEMENT -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -I"../hardware/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/321213250/gpio.o.d" -MT "${OBJECTDIR}/_ext/321213250/gpio.o.d" -MT ${OBJECTDIR}/_ext/321213250/gpio.o -o ${OBJECTDIR}/_ext/321213250/gpio.o ../tinyAVR-1ser-drv/src/gpio.c 
	
${OBJECTDIR}/_ext/321213250/mcu_options.o: ../tinyAVR-1ser-drv/src/mcu_options.c  .generated_files/flags/default/5613b3ab930e0527fcc4783f9ede0aa19f6ac30d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/321213250" 
	@${RM} ${OBJECTDIR}/_ext/321213250/mcu_options.o.d 
	@${RM} ${OBJECTDIR}/_ext/321213250/mcu_options.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DBASEMENT -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -I"../hardware/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/321213250/mcu_options.o.d" -MT "${OBJECTDIR}/_ext/321213250/mcu_options.o.d" -MT ${OBJECTDIR}/_ext/321213250/mcu_options.o -o ${OBJECTDIR}/_ext/321213250/mcu_options.o ../tinyAVR-1ser-drv/src/mcu_options.c 
	
${OBJECTDIR}/_ext/321213250/rtc.o: ../tinyAVR-1ser-drv/src/rtc.c  .generated_files/flags/default/ce04b6bf66ffd171cb3036680b2684a35c156fc5 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/321213250" 
	@${RM} ${OBJECTDIR}/_ext/321213250/rtc.o.d 
	@${RM} ${OBJECTDIR}/_ext/321213250/rtc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DBASEMENT -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -I"../hardware/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/321213250/rtc.o.d" -MT "${OBJECTDIR}/_ext/321213250/rtc.o.d" -MT ${OBJECTDIR}/_ext/321213250/rtc.o -o ${OBJECTDIR}/_ext/321213250/rtc.o ../tinyAVR-1ser-drv/src/rtc.c 
	
${OBJECTDIR}/_ext/321213250/spi.o: ../tinyAVR-1ser-drv/src/spi.c  .generated_files/flags/default/9b16311d960d715a6f156ee571a1d48e05d1405 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/321213250" 
	@${RM} ${OBJECTDIR}/_ext/321213250/spi.o.d 
	@${RM} ${OBJECTDIR}/_ext/321213250/spi.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DBASEMENT -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -I"../hardware/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/321213250/spi.o.d" -MT "${OBJECTDIR}/_ext/321213250/spi.o.d" -MT ${OBJECTDIR}/_ext/321213250/spi.o -o ${OBJECTDIR}/_ext/321213250/spi.o ../tinyAVR-1ser-drv/src/spi.c 
	
${OBJECTDIR}/_ext/321213250/timer.o: ../tinyAVR-1ser-drv/src/timer.c  .generated_files/flags/default/3840d5f196b77931f071bc139e97ef879f777cc2 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/321213250" 
	@${RM} ${OBJECTDIR}/_ext/321213250/timer.o.d 
	@${RM} ${OBJECTDIR}/_ext/321213250/timer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DBASEMENT -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -I"../hardware/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/321213250/timer.o.d" -MT "${OBJECTDIR}/_ext/321213250/timer.o.d" -MT ${OBJECTDIR}/_ext/321213250/timer.o -o ${OBJECTDIR}/_ext/321213250/timer.o ../tinyAVR-1ser-drv/src/timer.c 
	
${OBJECTDIR}/_ext/321213250/usart.o: ../tinyAVR-1ser-drv/src/usart.c  .generated_files/flags/default/5060650c11819775046b1f38f8609e8954a7cd42 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/321213250" 
	@${RM} ${OBJECTDIR}/_ext/321213250/usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/321213250/usart.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DBASEMENT -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -I"../hardware/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/321213250/usart.o.d" -MT "${OBJECTDIR}/_ext/321213250/usart.o.d" -MT ${OBJECTDIR}/_ext/321213250/usart.o -o ${OBJECTDIR}/_ext/321213250/usart.o ../tinyAVR-1ser-drv/src/usart.c 
	
${OBJECTDIR}/_ext/321213250/watchdog.o: ../tinyAVR-1ser-drv/src/watchdog.c  .generated_files/flags/default/b0be91c5d626ace241a7cb9cc6cb6cd3e35ff70a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/321213250" 
	@${RM} ${OBJECTDIR}/_ext/321213250/watchdog.o.d 
	@${RM} ${OBJECTDIR}/_ext/321213250/watchdog.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DBASEMENT -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -I"../hardware/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/321213250/watchdog.o.d" -MT "${OBJECTDIR}/_ext/321213250/watchdog.o.d" -MT ${OBJECTDIR}/_ext/321213250/watchdog.o -o ${OBJECTDIR}/_ext/321213250/watchdog.o ../tinyAVR-1ser-drv/src/watchdog.c 
	
${OBJECTDIR}/_ext/525381332/thermistor.o: ../hardware/src/thermistor.c  .generated_files/flags/default/2455bee7c2c4ddb3d016747a1cb481f69eba09f1 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/525381332" 
	@${RM} ${OBJECTDIR}/_ext/525381332/thermistor.o.d 
	@${RM} ${OBJECTDIR}/_ext/525381332/thermistor.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DBASEMENT -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -I"../hardware/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/525381332/thermistor.o.d" -MT "${OBJECTDIR}/_ext/525381332/thermistor.o.d" -MT ${OBJECTDIR}/_ext/525381332/thermistor.o -o ${OBJECTDIR}/_ext/525381332/thermistor.o ../hardware/src/thermistor.c 
	
${OBJECTDIR}/_ext/2047881166/hw_wrap.o: ../hw-wrap/src/hw_wrap.c  .generated_files/flags/default/35dd855ce6aa71edfd2163bf6f7bc0e842de806f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2047881166" 
	@${RM} ${OBJECTDIR}/_ext/2047881166/hw_wrap.o.d 
	@${RM} ${OBJECTDIR}/_ext/2047881166/hw_wrap.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DBASEMENT -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -I"../hardware/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/2047881166/hw_wrap.o.d" -MT "${OBJECTDIR}/_ext/2047881166/hw_wrap.o.d" -MT ${OBJECTDIR}/_ext/2047881166/hw_wrap.o -o ${OBJECTDIR}/_ext/2047881166/hw_wrap.o ../hw-wrap/src/hw_wrap.c 
	
${OBJECTDIR}/_ext/565612547/main.o: ../main/src/main.c  .generated_files/flags/default/93fb3b6ac362a6b9c1c27b6d9f20a44dc0468991 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/565612547" 
	@${RM} ${OBJECTDIR}/_ext/565612547/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/565612547/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DBASEMENT -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -I"../hardware/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/565612547/main.o.d" -MT "${OBJECTDIR}/_ext/565612547/main.o.d" -MT ${OBJECTDIR}/_ext/565612547/main.o -o ${OBJECTDIR}/_ext/565612547/main.o ../main/src/main.c 
	
else
${OBJECTDIR}/_ext/1819418535/delay.o: ../app/src/delay.c  .generated_files/flags/default/82eeeb8200117f8ed4a2caef2930028bfad041b6 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1819418535" 
	@${RM} ${OBJECTDIR}/_ext/1819418535/delay.o.d 
	@${RM} ${OBJECTDIR}/_ext/1819418535/delay.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DBASEMENT -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -I"../hardware/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1819418535/delay.o.d" -MT "${OBJECTDIR}/_ext/1819418535/delay.o.d" -MT ${OBJECTDIR}/_ext/1819418535/delay.o -o ${OBJECTDIR}/_ext/1819418535/delay.o ../app/src/delay.c 
	
${OBJECTDIR}/_ext/1819418535/mcu_control.o: ../app/src/mcu_control.c  .generated_files/flags/default/18a29eae4a4bf81a37a51e6ab5babc3d791228cd .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1819418535" 
	@${RM} ${OBJECTDIR}/_ext/1819418535/mcu_control.o.d 
	@${RM} ${OBJECTDIR}/_ext/1819418535/mcu_control.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DBASEMENT -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -I"../hardware/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1819418535/mcu_control.o.d" -MT "${OBJECTDIR}/_ext/1819418535/mcu_control.o.d" -MT ${OBJECTDIR}/_ext/1819418535/mcu_control.o -o ${OBJECTDIR}/_ext/1819418535/mcu_control.o ../app/src/mcu_control.c 
	
${OBJECTDIR}/_ext/1819418535/measurements.o: ../app/src/measurements.c  .generated_files/flags/default/96f0ae11875d818716e1d766c4b4df633e2d01f3 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1819418535" 
	@${RM} ${OBJECTDIR}/_ext/1819418535/measurements.o.d 
	@${RM} ${OBJECTDIR}/_ext/1819418535/measurements.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DBASEMENT -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -I"../hardware/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1819418535/measurements.o.d" -MT "${OBJECTDIR}/_ext/1819418535/measurements.o.d" -MT ${OBJECTDIR}/_ext/1819418535/measurements.o -o ${OBJECTDIR}/_ext/1819418535/measurements.o ../app/src/measurements.c 
	
${OBJECTDIR}/_ext/1819418535/memory.o: ../app/src/memory.c  .generated_files/flags/default/8032bce02db69040e6ca78eb8d4ae3537e78da46 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1819418535" 
	@${RM} ${OBJECTDIR}/_ext/1819418535/memory.o.d 
	@${RM} ${OBJECTDIR}/_ext/1819418535/memory.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DBASEMENT -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -I"../hardware/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1819418535/memory.o.d" -MT "${OBJECTDIR}/_ext/1819418535/memory.o.d" -MT ${OBJECTDIR}/_ext/1819418535/memory.o -o ${OBJECTDIR}/_ext/1819418535/memory.o ../app/src/memory.c 
	
${OBJECTDIR}/_ext/1819418535/ext_settings.o: ../app/src/ext_settings.c  .generated_files/flags/default/9d8166b964b9852011cf19a700e9a970a34a8c28 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1819418535" 
	@${RM} ${OBJECTDIR}/_ext/1819418535/ext_settings.o.d 
	@${RM} ${OBJECTDIR}/_ext/1819418535/ext_settings.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DBASEMENT -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -I"../hardware/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1819418535/ext_settings.o.d" -MT "${OBJECTDIR}/_ext/1819418535/ext_settings.o.d" -MT ${OBJECTDIR}/_ext/1819418535/ext_settings.o -o ${OBJECTDIR}/_ext/1819418535/ext_settings.o ../app/src/ext_settings.c 
	
${OBJECTDIR}/_ext/1819418535/filter.o: ../app/src/filter.c  .generated_files/flags/default/3c98e326ceef1c4468b71d9ec806a9fc569cdecf .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1819418535" 
	@${RM} ${OBJECTDIR}/_ext/1819418535/filter.o.d 
	@${RM} ${OBJECTDIR}/_ext/1819418535/filter.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DBASEMENT -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -I"../hardware/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1819418535/filter.o.d" -MT "${OBJECTDIR}/_ext/1819418535/filter.o.d" -MT ${OBJECTDIR}/_ext/1819418535/filter.o -o ${OBJECTDIR}/_ext/1819418535/filter.o ../app/src/filter.c 
	
${OBJECTDIR}/_ext/1819418535/fan.o: ../app/src/fan.c  .generated_files/flags/default/6e6376bf36b92e66423c6c332b90bd99e2d13113 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1819418535" 
	@${RM} ${OBJECTDIR}/_ext/1819418535/fan.o.d 
	@${RM} ${OBJECTDIR}/_ext/1819418535/fan.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DBASEMENT -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -I"../hardware/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1819418535/fan.o.d" -MT "${OBJECTDIR}/_ext/1819418535/fan.o.d" -MT ${OBJECTDIR}/_ext/1819418535/fan.o -o ${OBJECTDIR}/_ext/1819418535/fan.o ../app/src/fan.c 
	
${OBJECTDIR}/_ext/321213250/adc.o: ../tinyAVR-1ser-drv/src/adc.c  .generated_files/flags/default/8f6889de0e2511ecfa6b52d8d7c1e114078ccbfe .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/321213250" 
	@${RM} ${OBJECTDIR}/_ext/321213250/adc.o.d 
	@${RM} ${OBJECTDIR}/_ext/321213250/adc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DBASEMENT -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -I"../hardware/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/321213250/adc.o.d" -MT "${OBJECTDIR}/_ext/321213250/adc.o.d" -MT ${OBJECTDIR}/_ext/321213250/adc.o -o ${OBJECTDIR}/_ext/321213250/adc.o ../tinyAVR-1ser-drv/src/adc.c 
	
${OBJECTDIR}/_ext/321213250/clock.o: ../tinyAVR-1ser-drv/src/clock.c  .generated_files/flags/default/b00ffa1f914cfd5efb3c4c59f7931056074dac10 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/321213250" 
	@${RM} ${OBJECTDIR}/_ext/321213250/clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/321213250/clock.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DBASEMENT -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -I"../hardware/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/321213250/clock.o.d" -MT "${OBJECTDIR}/_ext/321213250/clock.o.d" -MT ${OBJECTDIR}/_ext/321213250/clock.o -o ${OBJECTDIR}/_ext/321213250/clock.o ../tinyAVR-1ser-drv/src/clock.c 
	
${OBJECTDIR}/_ext/321213250/eeprom.o: ../tinyAVR-1ser-drv/src/eeprom.c  .generated_files/flags/default/718f207b9e1d9496756fbfcf77eb225eb7cdbfad .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/321213250" 
	@${RM} ${OBJECTDIR}/_ext/321213250/eeprom.o.d 
	@${RM} ${OBJECTDIR}/_ext/321213250/eeprom.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DBASEMENT -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -I"../hardware/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/321213250/eeprom.o.d" -MT "${OBJECTDIR}/_ext/321213250/eeprom.o.d" -MT ${OBJECTDIR}/_ext/321213250/eeprom.o -o ${OBJECTDIR}/_ext/321213250/eeprom.o ../tinyAVR-1ser-drv/src/eeprom.c 
	
${OBJECTDIR}/_ext/321213250/gpio.o: ../tinyAVR-1ser-drv/src/gpio.c  .generated_files/flags/default/c0c1de755f736c0e724acb0da4610d05bb4b78c4 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/321213250" 
	@${RM} ${OBJECTDIR}/_ext/321213250/gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/321213250/gpio.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DBASEMENT -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -I"../hardware/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/321213250/gpio.o.d" -MT "${OBJECTDIR}/_ext/321213250/gpio.o.d" -MT ${OBJECTDIR}/_ext/321213250/gpio.o -o ${OBJECTDIR}/_ext/321213250/gpio.o ../tinyAVR-1ser-drv/src/gpio.c 
	
${OBJECTDIR}/_ext/321213250/mcu_options.o: ../tinyAVR-1ser-drv/src/mcu_options.c  .generated_files/flags/default/3da436c8e6b35686a4efd2d8eff1a8b7a72a3d48 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/321213250" 
	@${RM} ${OBJECTDIR}/_ext/321213250/mcu_options.o.d 
	@${RM} ${OBJECTDIR}/_ext/321213250/mcu_options.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DBASEMENT -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -I"../hardware/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/321213250/mcu_options.o.d" -MT "${OBJECTDIR}/_ext/321213250/mcu_options.o.d" -MT ${OBJECTDIR}/_ext/321213250/mcu_options.o -o ${OBJECTDIR}/_ext/321213250/mcu_options.o ../tinyAVR-1ser-drv/src/mcu_options.c 
	
${OBJECTDIR}/_ext/321213250/rtc.o: ../tinyAVR-1ser-drv/src/rtc.c  .generated_files/flags/default/222fcf9401c96e203c37e549e14d81e5651055a3 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/321213250" 
	@${RM} ${OBJECTDIR}/_ext/321213250/rtc.o.d 
	@${RM} ${OBJECTDIR}/_ext/321213250/rtc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DBASEMENT -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -I"../hardware/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/321213250/rtc.o.d" -MT "${OBJECTDIR}/_ext/321213250/rtc.o.d" -MT ${OBJECTDIR}/_ext/321213250/rtc.o -o ${OBJECTDIR}/_ext/321213250/rtc.o ../tinyAVR-1ser-drv/src/rtc.c 
	
${OBJECTDIR}/_ext/321213250/spi.o: ../tinyAVR-1ser-drv/src/spi.c  .generated_files/flags/default/acab5acb010c2fd694a6c2ad26551282711d4418 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/321213250" 
	@${RM} ${OBJECTDIR}/_ext/321213250/spi.o.d 
	@${RM} ${OBJECTDIR}/_ext/321213250/spi.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DBASEMENT -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -I"../hardware/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/321213250/spi.o.d" -MT "${OBJECTDIR}/_ext/321213250/spi.o.d" -MT ${OBJECTDIR}/_ext/321213250/spi.o -o ${OBJECTDIR}/_ext/321213250/spi.o ../tinyAVR-1ser-drv/src/spi.c 
	
${OBJECTDIR}/_ext/321213250/timer.o: ../tinyAVR-1ser-drv/src/timer.c  .generated_files/flags/default/31637db4383a7faf6d931a04e5f792040f19bde4 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/321213250" 
	@${RM} ${OBJECTDIR}/_ext/321213250/timer.o.d 
	@${RM} ${OBJECTDIR}/_ext/321213250/timer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DBASEMENT -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -I"../hardware/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/321213250/timer.o.d" -MT "${OBJECTDIR}/_ext/321213250/timer.o.d" -MT ${OBJECTDIR}/_ext/321213250/timer.o -o ${OBJECTDIR}/_ext/321213250/timer.o ../tinyAVR-1ser-drv/src/timer.c 
	
${OBJECTDIR}/_ext/321213250/usart.o: ../tinyAVR-1ser-drv/src/usart.c  .generated_files/flags/default/5aa8eda7b9974125b17e3139ec2ffcc8120e184a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/321213250" 
	@${RM} ${OBJECTDIR}/_ext/321213250/usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/321213250/usart.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DBASEMENT -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -I"../hardware/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/321213250/usart.o.d" -MT "${OBJECTDIR}/_ext/321213250/usart.o.d" -MT ${OBJECTDIR}/_ext/321213250/usart.o -o ${OBJECTDIR}/_ext/321213250/usart.o ../tinyAVR-1ser-drv/src/usart.c 
	
${OBJECTDIR}/_ext/321213250/watchdog.o: ../tinyAVR-1ser-drv/src/watchdog.c  .generated_files/flags/default/6f5052a663a37bcde1a0b2425c2f85576c971a03 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/321213250" 
	@${RM} ${OBJECTDIR}/_ext/321213250/watchdog.o.d 
	@${RM} ${OBJECTDIR}/_ext/321213250/watchdog.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DBASEMENT -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -I"../hardware/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/321213250/watchdog.o.d" -MT "${OBJECTDIR}/_ext/321213250/watchdog.o.d" -MT ${OBJECTDIR}/_ext/321213250/watchdog.o -o ${OBJECTDIR}/_ext/321213250/watchdog.o ../tinyAVR-1ser-drv/src/watchdog.c 
	
${OBJECTDIR}/_ext/525381332/thermistor.o: ../hardware/src/thermistor.c  .generated_files/flags/default/8bf02a884937faa28534370ba7ba99aa393fa9f7 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/525381332" 
	@${RM} ${OBJECTDIR}/_ext/525381332/thermistor.o.d 
	@${RM} ${OBJECTDIR}/_ext/525381332/thermistor.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DBASEMENT -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -I"../hardware/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/525381332/thermistor.o.d" -MT "${OBJECTDIR}/_ext/525381332/thermistor.o.d" -MT ${OBJECTDIR}/_ext/525381332/thermistor.o -o ${OBJECTDIR}/_ext/525381332/thermistor.o ../hardware/src/thermistor.c 
	
${OBJECTDIR}/_ext/2047881166/hw_wrap.o: ../hw-wrap/src/hw_wrap.c  .generated_files/flags/default/47c39b5dce42fc190f212b9988e5d9877c453248 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2047881166" 
	@${RM} ${OBJECTDIR}/_ext/2047881166/hw_wrap.o.d 
	@${RM} ${OBJECTDIR}/_ext/2047881166/hw_wrap.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DBASEMENT -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -I"../hardware/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/2047881166/hw_wrap.o.d" -MT "${OBJECTDIR}/_ext/2047881166/hw_wrap.o.d" -MT ${OBJECTDIR}/_ext/2047881166/hw_wrap.o -o ${OBJECTDIR}/_ext/2047881166/hw_wrap.o ../hw-wrap/src/hw_wrap.c 
	
${OBJECTDIR}/_ext/565612547/main.o: ../main/src/main.c  .generated_files/flags/default/2346e810f961fa85b8e919e72d4ca3a99b105b5f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/565612547" 
	@${RM} ${OBJECTDIR}/_ext/565612547/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/565612547/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DBASEMENT -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -I"../hardware/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/565612547/main.o.d" -MT "${OBJECTDIR}/_ext/565612547/main.o.d" -MT ${OBJECTDIR}/_ext/565612547/main.o -o ${OBJECTDIR}/_ext/565612547/main.o ../main/src/main.c 
	
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
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=${DISTDIR}/PROJ_DIR.${IMAGE_TYPE}.map  -D__DEBUG=1  -DXPRJ_default=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1   -mdfp="${DFP_DIR}/xc8"   -gdwarf-2 -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DBASEMENT -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -I"../hardware/inc" -Wall -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     $(COMPARISON_BUILD) -Wl,--memorysummary,${DISTDIR}/memoryfile.xml -o ${DISTDIR}/PROJ_DIR.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  -o ${DISTDIR}/PROJ_DIR.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -Wl,--start-group  -Wl,-lm -Wl,--end-group  -Wl,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1
	@${RM} ${DISTDIR}/PROJ_DIR.${IMAGE_TYPE}.hex 
	
	
else
${DISTDIR}/PROJ_DIR.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=${DISTDIR}/PROJ_DIR.${IMAGE_TYPE}.map  -DXPRJ_default=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -DBASEMENT -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -I"../hardware/inc" -Wall -gdwarf-3 -mconst-data-in-progmem -mno-const-data-in-config-mapped-progmem     $(COMPARISON_BUILD) -Wl,--memorysummary,${DISTDIR}/memoryfile.xml -o ${DISTDIR}/PROJ_DIR.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  -o ${DISTDIR}/PROJ_DIR.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -Wl,--start-group  -Wl,-lm -Wl,--end-group 
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
