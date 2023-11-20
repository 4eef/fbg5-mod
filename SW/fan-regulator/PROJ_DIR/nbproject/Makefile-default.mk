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
SOURCEFILES_QUOTED_IF_SPACED=../app/src/delay.c ../app/src/mcu_control.c ../app/src/measurements.c ../app/src/memory.c ../app/src/ext_settings.c ../app/src/filter.c ../app/src/fan.c ../tinyAVR-1ser-drv/src/adc.c ../tinyAVR-1ser-drv/src/clock.c ../tinyAVR-1ser-drv/src/eeprom.c ../tinyAVR-1ser-drv/src/gpio.c ../tinyAVR-1ser-drv/src/mcu_options.c ../tinyAVR-1ser-drv/src/rtc.c ../tinyAVR-1ser-drv/src/spi.c ../tinyAVR-1ser-drv/src/timer.c ../tinyAVR-1ser-drv/src/usart.c ../tinyAVR-1ser-drv/src/watchdog.c ../hw-wrap/src/hw_wrap.c ../main/src/main.c ../hardware/src/thermistor.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1819418535/delay.o ${OBJECTDIR}/_ext/1819418535/mcu_control.o ${OBJECTDIR}/_ext/1819418535/measurements.o ${OBJECTDIR}/_ext/1819418535/memory.o ${OBJECTDIR}/_ext/1819418535/ext_settings.o ${OBJECTDIR}/_ext/1819418535/filter.o ${OBJECTDIR}/_ext/1819418535/fan.o ${OBJECTDIR}/_ext/321213250/adc.o ${OBJECTDIR}/_ext/321213250/clock.o ${OBJECTDIR}/_ext/321213250/eeprom.o ${OBJECTDIR}/_ext/321213250/gpio.o ${OBJECTDIR}/_ext/321213250/mcu_options.o ${OBJECTDIR}/_ext/321213250/rtc.o ${OBJECTDIR}/_ext/321213250/spi.o ${OBJECTDIR}/_ext/321213250/timer.o ${OBJECTDIR}/_ext/321213250/usart.o ${OBJECTDIR}/_ext/321213250/watchdog.o ${OBJECTDIR}/_ext/2047881166/hw_wrap.o ${OBJECTDIR}/_ext/565612547/main.o ${OBJECTDIR}/_ext/525381332/thermistor.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1819418535/delay.o.d ${OBJECTDIR}/_ext/1819418535/mcu_control.o.d ${OBJECTDIR}/_ext/1819418535/measurements.o.d ${OBJECTDIR}/_ext/1819418535/memory.o.d ${OBJECTDIR}/_ext/1819418535/ext_settings.o.d ${OBJECTDIR}/_ext/1819418535/filter.o.d ${OBJECTDIR}/_ext/1819418535/fan.o.d ${OBJECTDIR}/_ext/321213250/adc.o.d ${OBJECTDIR}/_ext/321213250/clock.o.d ${OBJECTDIR}/_ext/321213250/eeprom.o.d ${OBJECTDIR}/_ext/321213250/gpio.o.d ${OBJECTDIR}/_ext/321213250/mcu_options.o.d ${OBJECTDIR}/_ext/321213250/rtc.o.d ${OBJECTDIR}/_ext/321213250/spi.o.d ${OBJECTDIR}/_ext/321213250/timer.o.d ${OBJECTDIR}/_ext/321213250/usart.o.d ${OBJECTDIR}/_ext/321213250/watchdog.o.d ${OBJECTDIR}/_ext/2047881166/hw_wrap.o.d ${OBJECTDIR}/_ext/565612547/main.o.d ${OBJECTDIR}/_ext/525381332/thermistor.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1819418535/delay.o ${OBJECTDIR}/_ext/1819418535/mcu_control.o ${OBJECTDIR}/_ext/1819418535/measurements.o ${OBJECTDIR}/_ext/1819418535/memory.o ${OBJECTDIR}/_ext/1819418535/ext_settings.o ${OBJECTDIR}/_ext/1819418535/filter.o ${OBJECTDIR}/_ext/1819418535/fan.o ${OBJECTDIR}/_ext/321213250/adc.o ${OBJECTDIR}/_ext/321213250/clock.o ${OBJECTDIR}/_ext/321213250/eeprom.o ${OBJECTDIR}/_ext/321213250/gpio.o ${OBJECTDIR}/_ext/321213250/mcu_options.o ${OBJECTDIR}/_ext/321213250/rtc.o ${OBJECTDIR}/_ext/321213250/spi.o ${OBJECTDIR}/_ext/321213250/timer.o ${OBJECTDIR}/_ext/321213250/usart.o ${OBJECTDIR}/_ext/321213250/watchdog.o ${OBJECTDIR}/_ext/2047881166/hw_wrap.o ${OBJECTDIR}/_ext/565612547/main.o ${OBJECTDIR}/_ext/525381332/thermistor.o

# Source Files
SOURCEFILES=../app/src/delay.c ../app/src/mcu_control.c ../app/src/measurements.c ../app/src/memory.c ../app/src/ext_settings.c ../app/src/filter.c ../app/src/fan.c ../tinyAVR-1ser-drv/src/adc.c ../tinyAVR-1ser-drv/src/clock.c ../tinyAVR-1ser-drv/src/eeprom.c ../tinyAVR-1ser-drv/src/gpio.c ../tinyAVR-1ser-drv/src/mcu_options.c ../tinyAVR-1ser-drv/src/rtc.c ../tinyAVR-1ser-drv/src/spi.c ../tinyAVR-1ser-drv/src/timer.c ../tinyAVR-1ser-drv/src/usart.c ../tinyAVR-1ser-drv/src/watchdog.c ../hw-wrap/src/hw_wrap.c ../main/src/main.c ../hardware/src/thermistor.c



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
${OBJECTDIR}/_ext/1819418535/delay.o: ../app/src/delay.c  .generated_files/flags/default/a1357c26c205f9ee1a39ef8af9098d9e3283963b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1819418535" 
	@${RM} ${OBJECTDIR}/_ext/1819418535/delay.o.d 
	@${RM} ${OBJECTDIR}/_ext/1819418535/delay.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -I"../hardware/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1819418535/delay.o.d" -MT "${OBJECTDIR}/_ext/1819418535/delay.o.d" -MT ${OBJECTDIR}/_ext/1819418535/delay.o -o ${OBJECTDIR}/_ext/1819418535/delay.o ../app/src/delay.c 
	
${OBJECTDIR}/_ext/1819418535/mcu_control.o: ../app/src/mcu_control.c  .generated_files/flags/default/c2d69db26e51f34f29661b03ee88a660859717a9 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1819418535" 
	@${RM} ${OBJECTDIR}/_ext/1819418535/mcu_control.o.d 
	@${RM} ${OBJECTDIR}/_ext/1819418535/mcu_control.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -I"../hardware/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1819418535/mcu_control.o.d" -MT "${OBJECTDIR}/_ext/1819418535/mcu_control.o.d" -MT ${OBJECTDIR}/_ext/1819418535/mcu_control.o -o ${OBJECTDIR}/_ext/1819418535/mcu_control.o ../app/src/mcu_control.c 
	
${OBJECTDIR}/_ext/1819418535/measurements.o: ../app/src/measurements.c  .generated_files/flags/default/d0b51a39ce83fbc4757672216392bf98a08e1890 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1819418535" 
	@${RM} ${OBJECTDIR}/_ext/1819418535/measurements.o.d 
	@${RM} ${OBJECTDIR}/_ext/1819418535/measurements.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -I"../hardware/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1819418535/measurements.o.d" -MT "${OBJECTDIR}/_ext/1819418535/measurements.o.d" -MT ${OBJECTDIR}/_ext/1819418535/measurements.o -o ${OBJECTDIR}/_ext/1819418535/measurements.o ../app/src/measurements.c 
	
${OBJECTDIR}/_ext/1819418535/memory.o: ../app/src/memory.c  .generated_files/flags/default/92cb3757e75ae0556becc12a630eee6c6ba885c3 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1819418535" 
	@${RM} ${OBJECTDIR}/_ext/1819418535/memory.o.d 
	@${RM} ${OBJECTDIR}/_ext/1819418535/memory.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -I"../hardware/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1819418535/memory.o.d" -MT "${OBJECTDIR}/_ext/1819418535/memory.o.d" -MT ${OBJECTDIR}/_ext/1819418535/memory.o -o ${OBJECTDIR}/_ext/1819418535/memory.o ../app/src/memory.c 
	
${OBJECTDIR}/_ext/1819418535/ext_settings.o: ../app/src/ext_settings.c  .generated_files/flags/default/17758b6c45eda0ad9a0046b26ba161fe68ce146a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1819418535" 
	@${RM} ${OBJECTDIR}/_ext/1819418535/ext_settings.o.d 
	@${RM} ${OBJECTDIR}/_ext/1819418535/ext_settings.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -I"../hardware/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1819418535/ext_settings.o.d" -MT "${OBJECTDIR}/_ext/1819418535/ext_settings.o.d" -MT ${OBJECTDIR}/_ext/1819418535/ext_settings.o -o ${OBJECTDIR}/_ext/1819418535/ext_settings.o ../app/src/ext_settings.c 
	
${OBJECTDIR}/_ext/1819418535/filter.o: ../app/src/filter.c  .generated_files/flags/default/8512fb890a11ac73375ca91ff9b390acbf7c1255 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1819418535" 
	@${RM} ${OBJECTDIR}/_ext/1819418535/filter.o.d 
	@${RM} ${OBJECTDIR}/_ext/1819418535/filter.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -I"../hardware/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1819418535/filter.o.d" -MT "${OBJECTDIR}/_ext/1819418535/filter.o.d" -MT ${OBJECTDIR}/_ext/1819418535/filter.o -o ${OBJECTDIR}/_ext/1819418535/filter.o ../app/src/filter.c 
	
${OBJECTDIR}/_ext/1819418535/fan.o: ../app/src/fan.c  .generated_files/flags/default/50308e53e35ad0da90b7cf1937d3f09badc2e7b0 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1819418535" 
	@${RM} ${OBJECTDIR}/_ext/1819418535/fan.o.d 
	@${RM} ${OBJECTDIR}/_ext/1819418535/fan.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -I"../hardware/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1819418535/fan.o.d" -MT "${OBJECTDIR}/_ext/1819418535/fan.o.d" -MT ${OBJECTDIR}/_ext/1819418535/fan.o -o ${OBJECTDIR}/_ext/1819418535/fan.o ../app/src/fan.c 
	
${OBJECTDIR}/_ext/321213250/adc.o: ../tinyAVR-1ser-drv/src/adc.c  .generated_files/flags/default/9acfc70e3f4cc9f822bbed966433a33b68fb6c98 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/321213250" 
	@${RM} ${OBJECTDIR}/_ext/321213250/adc.o.d 
	@${RM} ${OBJECTDIR}/_ext/321213250/adc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -I"../hardware/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/321213250/adc.o.d" -MT "${OBJECTDIR}/_ext/321213250/adc.o.d" -MT ${OBJECTDIR}/_ext/321213250/adc.o -o ${OBJECTDIR}/_ext/321213250/adc.o ../tinyAVR-1ser-drv/src/adc.c 
	
${OBJECTDIR}/_ext/321213250/clock.o: ../tinyAVR-1ser-drv/src/clock.c  .generated_files/flags/default/6d27c7ec66ef565982f6f2fcd2253b4a7c903282 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/321213250" 
	@${RM} ${OBJECTDIR}/_ext/321213250/clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/321213250/clock.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -I"../hardware/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/321213250/clock.o.d" -MT "${OBJECTDIR}/_ext/321213250/clock.o.d" -MT ${OBJECTDIR}/_ext/321213250/clock.o -o ${OBJECTDIR}/_ext/321213250/clock.o ../tinyAVR-1ser-drv/src/clock.c 
	
${OBJECTDIR}/_ext/321213250/eeprom.o: ../tinyAVR-1ser-drv/src/eeprom.c  .generated_files/flags/default/10c8be00b0d088525b12baea692a4048396ffbc4 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/321213250" 
	@${RM} ${OBJECTDIR}/_ext/321213250/eeprom.o.d 
	@${RM} ${OBJECTDIR}/_ext/321213250/eeprom.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -I"../hardware/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/321213250/eeprom.o.d" -MT "${OBJECTDIR}/_ext/321213250/eeprom.o.d" -MT ${OBJECTDIR}/_ext/321213250/eeprom.o -o ${OBJECTDIR}/_ext/321213250/eeprom.o ../tinyAVR-1ser-drv/src/eeprom.c 
	
${OBJECTDIR}/_ext/321213250/gpio.o: ../tinyAVR-1ser-drv/src/gpio.c  .generated_files/flags/default/6d79f62c0c031f571ca5032efafa5547f4845856 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/321213250" 
	@${RM} ${OBJECTDIR}/_ext/321213250/gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/321213250/gpio.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -I"../hardware/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/321213250/gpio.o.d" -MT "${OBJECTDIR}/_ext/321213250/gpio.o.d" -MT ${OBJECTDIR}/_ext/321213250/gpio.o -o ${OBJECTDIR}/_ext/321213250/gpio.o ../tinyAVR-1ser-drv/src/gpio.c 
	
${OBJECTDIR}/_ext/321213250/mcu_options.o: ../tinyAVR-1ser-drv/src/mcu_options.c  .generated_files/flags/default/7588609981bc97aaa38be5ccdbdf9e7aa1f63854 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/321213250" 
	@${RM} ${OBJECTDIR}/_ext/321213250/mcu_options.o.d 
	@${RM} ${OBJECTDIR}/_ext/321213250/mcu_options.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -I"../hardware/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/321213250/mcu_options.o.d" -MT "${OBJECTDIR}/_ext/321213250/mcu_options.o.d" -MT ${OBJECTDIR}/_ext/321213250/mcu_options.o -o ${OBJECTDIR}/_ext/321213250/mcu_options.o ../tinyAVR-1ser-drv/src/mcu_options.c 
	
${OBJECTDIR}/_ext/321213250/rtc.o: ../tinyAVR-1ser-drv/src/rtc.c  .generated_files/flags/default/8b575e58178570ded88fb5ead05dcc317f77ba10 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/321213250" 
	@${RM} ${OBJECTDIR}/_ext/321213250/rtc.o.d 
	@${RM} ${OBJECTDIR}/_ext/321213250/rtc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -I"../hardware/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/321213250/rtc.o.d" -MT "${OBJECTDIR}/_ext/321213250/rtc.o.d" -MT ${OBJECTDIR}/_ext/321213250/rtc.o -o ${OBJECTDIR}/_ext/321213250/rtc.o ../tinyAVR-1ser-drv/src/rtc.c 
	
${OBJECTDIR}/_ext/321213250/spi.o: ../tinyAVR-1ser-drv/src/spi.c  .generated_files/flags/default/4ea8fa93b37fc53bb2ea16ee94e21661239e6d61 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/321213250" 
	@${RM} ${OBJECTDIR}/_ext/321213250/spi.o.d 
	@${RM} ${OBJECTDIR}/_ext/321213250/spi.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -I"../hardware/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/321213250/spi.o.d" -MT "${OBJECTDIR}/_ext/321213250/spi.o.d" -MT ${OBJECTDIR}/_ext/321213250/spi.o -o ${OBJECTDIR}/_ext/321213250/spi.o ../tinyAVR-1ser-drv/src/spi.c 
	
${OBJECTDIR}/_ext/321213250/timer.o: ../tinyAVR-1ser-drv/src/timer.c  .generated_files/flags/default/5124a092602aa3a7219a4f220be65d64f118332 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/321213250" 
	@${RM} ${OBJECTDIR}/_ext/321213250/timer.o.d 
	@${RM} ${OBJECTDIR}/_ext/321213250/timer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -I"../hardware/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/321213250/timer.o.d" -MT "${OBJECTDIR}/_ext/321213250/timer.o.d" -MT ${OBJECTDIR}/_ext/321213250/timer.o -o ${OBJECTDIR}/_ext/321213250/timer.o ../tinyAVR-1ser-drv/src/timer.c 
	
${OBJECTDIR}/_ext/321213250/usart.o: ../tinyAVR-1ser-drv/src/usart.c  .generated_files/flags/default/2fb34ae5712e15a15c89b17e119523f49dd16f95 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/321213250" 
	@${RM} ${OBJECTDIR}/_ext/321213250/usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/321213250/usart.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -I"../hardware/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/321213250/usart.o.d" -MT "${OBJECTDIR}/_ext/321213250/usart.o.d" -MT ${OBJECTDIR}/_ext/321213250/usart.o -o ${OBJECTDIR}/_ext/321213250/usart.o ../tinyAVR-1ser-drv/src/usart.c 
	
${OBJECTDIR}/_ext/321213250/watchdog.o: ../tinyAVR-1ser-drv/src/watchdog.c  .generated_files/flags/default/5cdb82076c17e7b4eb45ca98f519010eaed82cde .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/321213250" 
	@${RM} ${OBJECTDIR}/_ext/321213250/watchdog.o.d 
	@${RM} ${OBJECTDIR}/_ext/321213250/watchdog.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -I"../hardware/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/321213250/watchdog.o.d" -MT "${OBJECTDIR}/_ext/321213250/watchdog.o.d" -MT ${OBJECTDIR}/_ext/321213250/watchdog.o -o ${OBJECTDIR}/_ext/321213250/watchdog.o ../tinyAVR-1ser-drv/src/watchdog.c 
	
${OBJECTDIR}/_ext/2047881166/hw_wrap.o: ../hw-wrap/src/hw_wrap.c  .generated_files/flags/default/85774d78bbc8fe7dc60e889dd9c4a00284881a9e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2047881166" 
	@${RM} ${OBJECTDIR}/_ext/2047881166/hw_wrap.o.d 
	@${RM} ${OBJECTDIR}/_ext/2047881166/hw_wrap.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -I"../hardware/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/2047881166/hw_wrap.o.d" -MT "${OBJECTDIR}/_ext/2047881166/hw_wrap.o.d" -MT ${OBJECTDIR}/_ext/2047881166/hw_wrap.o -o ${OBJECTDIR}/_ext/2047881166/hw_wrap.o ../hw-wrap/src/hw_wrap.c 
	
${OBJECTDIR}/_ext/565612547/main.o: ../main/src/main.c  .generated_files/flags/default/2d5d4c901ad727a839ae615eea112e5ea18c9a4f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/565612547" 
	@${RM} ${OBJECTDIR}/_ext/565612547/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/565612547/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -I"../hardware/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/565612547/main.o.d" -MT "${OBJECTDIR}/_ext/565612547/main.o.d" -MT ${OBJECTDIR}/_ext/565612547/main.o -o ${OBJECTDIR}/_ext/565612547/main.o ../main/src/main.c 
	
${OBJECTDIR}/_ext/525381332/thermistor.o: ../hardware/src/thermistor.c  .generated_files/flags/default/f11deb9f221afbe2282a9cbdbb166f179893b653 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/525381332" 
	@${RM} ${OBJECTDIR}/_ext/525381332/thermistor.o.d 
	@${RM} ${OBJECTDIR}/_ext/525381332/thermistor.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -I"../hardware/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/525381332/thermistor.o.d" -MT "${OBJECTDIR}/_ext/525381332/thermistor.o.d" -MT ${OBJECTDIR}/_ext/525381332/thermistor.o -o ${OBJECTDIR}/_ext/525381332/thermistor.o ../hardware/src/thermistor.c 
	
else
${OBJECTDIR}/_ext/1819418535/delay.o: ../app/src/delay.c  .generated_files/flags/default/f01c62006c313ea9e1787759f99b2d86e0f4f071 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1819418535" 
	@${RM} ${OBJECTDIR}/_ext/1819418535/delay.o.d 
	@${RM} ${OBJECTDIR}/_ext/1819418535/delay.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -I"../hardware/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1819418535/delay.o.d" -MT "${OBJECTDIR}/_ext/1819418535/delay.o.d" -MT ${OBJECTDIR}/_ext/1819418535/delay.o -o ${OBJECTDIR}/_ext/1819418535/delay.o ../app/src/delay.c 
	
${OBJECTDIR}/_ext/1819418535/mcu_control.o: ../app/src/mcu_control.c  .generated_files/flags/default/d53d4dbf785fe2242eb7d027b65ff028b4e9df50 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1819418535" 
	@${RM} ${OBJECTDIR}/_ext/1819418535/mcu_control.o.d 
	@${RM} ${OBJECTDIR}/_ext/1819418535/mcu_control.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -I"../hardware/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1819418535/mcu_control.o.d" -MT "${OBJECTDIR}/_ext/1819418535/mcu_control.o.d" -MT ${OBJECTDIR}/_ext/1819418535/mcu_control.o -o ${OBJECTDIR}/_ext/1819418535/mcu_control.o ../app/src/mcu_control.c 
	
${OBJECTDIR}/_ext/1819418535/measurements.o: ../app/src/measurements.c  .generated_files/flags/default/e23e270d1b4bc5c5ac32ce27c8d0d9b994c40fcc .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1819418535" 
	@${RM} ${OBJECTDIR}/_ext/1819418535/measurements.o.d 
	@${RM} ${OBJECTDIR}/_ext/1819418535/measurements.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -I"../hardware/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1819418535/measurements.o.d" -MT "${OBJECTDIR}/_ext/1819418535/measurements.o.d" -MT ${OBJECTDIR}/_ext/1819418535/measurements.o -o ${OBJECTDIR}/_ext/1819418535/measurements.o ../app/src/measurements.c 
	
${OBJECTDIR}/_ext/1819418535/memory.o: ../app/src/memory.c  .generated_files/flags/default/6aa097914dbcce882365d91089afab4b1e9590e9 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1819418535" 
	@${RM} ${OBJECTDIR}/_ext/1819418535/memory.o.d 
	@${RM} ${OBJECTDIR}/_ext/1819418535/memory.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -I"../hardware/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1819418535/memory.o.d" -MT "${OBJECTDIR}/_ext/1819418535/memory.o.d" -MT ${OBJECTDIR}/_ext/1819418535/memory.o -o ${OBJECTDIR}/_ext/1819418535/memory.o ../app/src/memory.c 
	
${OBJECTDIR}/_ext/1819418535/ext_settings.o: ../app/src/ext_settings.c  .generated_files/flags/default/a9aafdd55283875baccc4e972bebc350ae62dba9 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1819418535" 
	@${RM} ${OBJECTDIR}/_ext/1819418535/ext_settings.o.d 
	@${RM} ${OBJECTDIR}/_ext/1819418535/ext_settings.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -I"../hardware/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1819418535/ext_settings.o.d" -MT "${OBJECTDIR}/_ext/1819418535/ext_settings.o.d" -MT ${OBJECTDIR}/_ext/1819418535/ext_settings.o -o ${OBJECTDIR}/_ext/1819418535/ext_settings.o ../app/src/ext_settings.c 
	
${OBJECTDIR}/_ext/1819418535/filter.o: ../app/src/filter.c  .generated_files/flags/default/3769a7a7bc32ab0a3523e25649342c8ca5dcf1e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1819418535" 
	@${RM} ${OBJECTDIR}/_ext/1819418535/filter.o.d 
	@${RM} ${OBJECTDIR}/_ext/1819418535/filter.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -I"../hardware/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1819418535/filter.o.d" -MT "${OBJECTDIR}/_ext/1819418535/filter.o.d" -MT ${OBJECTDIR}/_ext/1819418535/filter.o -o ${OBJECTDIR}/_ext/1819418535/filter.o ../app/src/filter.c 
	
${OBJECTDIR}/_ext/1819418535/fan.o: ../app/src/fan.c  .generated_files/flags/default/b921c08ff8422e91dfa034983acd08677304c96f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1819418535" 
	@${RM} ${OBJECTDIR}/_ext/1819418535/fan.o.d 
	@${RM} ${OBJECTDIR}/_ext/1819418535/fan.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -I"../hardware/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1819418535/fan.o.d" -MT "${OBJECTDIR}/_ext/1819418535/fan.o.d" -MT ${OBJECTDIR}/_ext/1819418535/fan.o -o ${OBJECTDIR}/_ext/1819418535/fan.o ../app/src/fan.c 
	
${OBJECTDIR}/_ext/321213250/adc.o: ../tinyAVR-1ser-drv/src/adc.c  .generated_files/flags/default/c546f16dd5e2502946ed3bb9b3faa333b8b7f67e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/321213250" 
	@${RM} ${OBJECTDIR}/_ext/321213250/adc.o.d 
	@${RM} ${OBJECTDIR}/_ext/321213250/adc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -I"../hardware/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/321213250/adc.o.d" -MT "${OBJECTDIR}/_ext/321213250/adc.o.d" -MT ${OBJECTDIR}/_ext/321213250/adc.o -o ${OBJECTDIR}/_ext/321213250/adc.o ../tinyAVR-1ser-drv/src/adc.c 
	
${OBJECTDIR}/_ext/321213250/clock.o: ../tinyAVR-1ser-drv/src/clock.c  .generated_files/flags/default/b8b27bcd7e7bcec7f2739dfebe2088d19a85dc38 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/321213250" 
	@${RM} ${OBJECTDIR}/_ext/321213250/clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/321213250/clock.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -I"../hardware/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/321213250/clock.o.d" -MT "${OBJECTDIR}/_ext/321213250/clock.o.d" -MT ${OBJECTDIR}/_ext/321213250/clock.o -o ${OBJECTDIR}/_ext/321213250/clock.o ../tinyAVR-1ser-drv/src/clock.c 
	
${OBJECTDIR}/_ext/321213250/eeprom.o: ../tinyAVR-1ser-drv/src/eeprom.c  .generated_files/flags/default/bddf9e0dbbb62bb612dddd427ebefd518147349c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/321213250" 
	@${RM} ${OBJECTDIR}/_ext/321213250/eeprom.o.d 
	@${RM} ${OBJECTDIR}/_ext/321213250/eeprom.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -I"../hardware/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/321213250/eeprom.o.d" -MT "${OBJECTDIR}/_ext/321213250/eeprom.o.d" -MT ${OBJECTDIR}/_ext/321213250/eeprom.o -o ${OBJECTDIR}/_ext/321213250/eeprom.o ../tinyAVR-1ser-drv/src/eeprom.c 
	
${OBJECTDIR}/_ext/321213250/gpio.o: ../tinyAVR-1ser-drv/src/gpio.c  .generated_files/flags/default/85cf6fa19eb67e01dbd9d745616e6004eb5a201d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/321213250" 
	@${RM} ${OBJECTDIR}/_ext/321213250/gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/321213250/gpio.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -I"../hardware/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/321213250/gpio.o.d" -MT "${OBJECTDIR}/_ext/321213250/gpio.o.d" -MT ${OBJECTDIR}/_ext/321213250/gpio.o -o ${OBJECTDIR}/_ext/321213250/gpio.o ../tinyAVR-1ser-drv/src/gpio.c 
	
${OBJECTDIR}/_ext/321213250/mcu_options.o: ../tinyAVR-1ser-drv/src/mcu_options.c  .generated_files/flags/default/b953eafa83fc0986dd9018ed1be9bdf3a748a517 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/321213250" 
	@${RM} ${OBJECTDIR}/_ext/321213250/mcu_options.o.d 
	@${RM} ${OBJECTDIR}/_ext/321213250/mcu_options.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -I"../hardware/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/321213250/mcu_options.o.d" -MT "${OBJECTDIR}/_ext/321213250/mcu_options.o.d" -MT ${OBJECTDIR}/_ext/321213250/mcu_options.o -o ${OBJECTDIR}/_ext/321213250/mcu_options.o ../tinyAVR-1ser-drv/src/mcu_options.c 
	
${OBJECTDIR}/_ext/321213250/rtc.o: ../tinyAVR-1ser-drv/src/rtc.c  .generated_files/flags/default/18d1c1c47f9ccddf9af5d6e8ca51b8d034c25d8b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/321213250" 
	@${RM} ${OBJECTDIR}/_ext/321213250/rtc.o.d 
	@${RM} ${OBJECTDIR}/_ext/321213250/rtc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -I"../hardware/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/321213250/rtc.o.d" -MT "${OBJECTDIR}/_ext/321213250/rtc.o.d" -MT ${OBJECTDIR}/_ext/321213250/rtc.o -o ${OBJECTDIR}/_ext/321213250/rtc.o ../tinyAVR-1ser-drv/src/rtc.c 
	
${OBJECTDIR}/_ext/321213250/spi.o: ../tinyAVR-1ser-drv/src/spi.c  .generated_files/flags/default/871a5b843efc29e3a50e4a6bf8ca44e6fd973087 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/321213250" 
	@${RM} ${OBJECTDIR}/_ext/321213250/spi.o.d 
	@${RM} ${OBJECTDIR}/_ext/321213250/spi.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -I"../hardware/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/321213250/spi.o.d" -MT "${OBJECTDIR}/_ext/321213250/spi.o.d" -MT ${OBJECTDIR}/_ext/321213250/spi.o -o ${OBJECTDIR}/_ext/321213250/spi.o ../tinyAVR-1ser-drv/src/spi.c 
	
${OBJECTDIR}/_ext/321213250/timer.o: ../tinyAVR-1ser-drv/src/timer.c  .generated_files/flags/default/2af454fb3c77ea2f008e0a729830adb7f1e4fcc8 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/321213250" 
	@${RM} ${OBJECTDIR}/_ext/321213250/timer.o.d 
	@${RM} ${OBJECTDIR}/_ext/321213250/timer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -I"../hardware/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/321213250/timer.o.d" -MT "${OBJECTDIR}/_ext/321213250/timer.o.d" -MT ${OBJECTDIR}/_ext/321213250/timer.o -o ${OBJECTDIR}/_ext/321213250/timer.o ../tinyAVR-1ser-drv/src/timer.c 
	
${OBJECTDIR}/_ext/321213250/usart.o: ../tinyAVR-1ser-drv/src/usart.c  .generated_files/flags/default/4c05724647b8f96f7cb9fc0a820ab967373e533b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/321213250" 
	@${RM} ${OBJECTDIR}/_ext/321213250/usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/321213250/usart.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -I"../hardware/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/321213250/usart.o.d" -MT "${OBJECTDIR}/_ext/321213250/usart.o.d" -MT ${OBJECTDIR}/_ext/321213250/usart.o -o ${OBJECTDIR}/_ext/321213250/usart.o ../tinyAVR-1ser-drv/src/usart.c 
	
${OBJECTDIR}/_ext/321213250/watchdog.o: ../tinyAVR-1ser-drv/src/watchdog.c  .generated_files/flags/default/df6bfa455901cdecabfa30bc0e9f123180334c7a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/321213250" 
	@${RM} ${OBJECTDIR}/_ext/321213250/watchdog.o.d 
	@${RM} ${OBJECTDIR}/_ext/321213250/watchdog.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -I"../hardware/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/321213250/watchdog.o.d" -MT "${OBJECTDIR}/_ext/321213250/watchdog.o.d" -MT ${OBJECTDIR}/_ext/321213250/watchdog.o -o ${OBJECTDIR}/_ext/321213250/watchdog.o ../tinyAVR-1ser-drv/src/watchdog.c 
	
${OBJECTDIR}/_ext/2047881166/hw_wrap.o: ../hw-wrap/src/hw_wrap.c  .generated_files/flags/default/e36d74cdc5329ef9bbc5c05c6f0e5d7415c019e6 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2047881166" 
	@${RM} ${OBJECTDIR}/_ext/2047881166/hw_wrap.o.d 
	@${RM} ${OBJECTDIR}/_ext/2047881166/hw_wrap.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -I"../hardware/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/2047881166/hw_wrap.o.d" -MT "${OBJECTDIR}/_ext/2047881166/hw_wrap.o.d" -MT ${OBJECTDIR}/_ext/2047881166/hw_wrap.o -o ${OBJECTDIR}/_ext/2047881166/hw_wrap.o ../hw-wrap/src/hw_wrap.c 
	
${OBJECTDIR}/_ext/565612547/main.o: ../main/src/main.c  .generated_files/flags/default/a7b32e0b25f69af3dcd125c0518f35d7b7672767 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/565612547" 
	@${RM} ${OBJECTDIR}/_ext/565612547/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/565612547/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -I"../hardware/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/565612547/main.o.d" -MT "${OBJECTDIR}/_ext/565612547/main.o.d" -MT ${OBJECTDIR}/_ext/565612547/main.o -o ${OBJECTDIR}/_ext/565612547/main.o ../main/src/main.c 
	
${OBJECTDIR}/_ext/525381332/thermistor.o: ../hardware/src/thermistor.c  .generated_files/flags/default/87593ed86e3eb25eea31d03bc7ad566d7e1b34b4 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/525381332" 
	@${RM} ${OBJECTDIR}/_ext/525381332/thermistor.o.d 
	@${RM} ${OBJECTDIR}/_ext/525381332/thermistor.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -I"../hardware/inc" -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mconst-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/525381332/thermistor.o.d" -MT "${OBJECTDIR}/_ext/525381332/thermistor.o.d" -MT ${OBJECTDIR}/_ext/525381332/thermistor.o -o ${OBJECTDIR}/_ext/525381332/thermistor.o ../hardware/src/thermistor.c 
	
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
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=${DISTDIR}/PROJ_DIR.${IMAGE_TYPE}.map  -D__DEBUG=1  -DXPRJ_default=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1   -mdfp="${DFP_DIR}/xc8"   -gdwarf-2 -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -I"../hardware/inc" -Wall -gdwarf-3 -mconst-data-in-progmem     $(COMPARISON_BUILD) -Wl,--memorysummary,${DISTDIR}/memoryfile.xml -o ${DISTDIR}/PROJ_DIR.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  -o ${DISTDIR}/PROJ_DIR.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -Wl,--start-group  -Wl,-lm -Wl,--end-group  -Wl,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1
	@${RM} ${DISTDIR}/PROJ_DIR.${IMAGE_TYPE}.hex 
	
else
${DISTDIR}/PROJ_DIR.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=${DISTDIR}/PROJ_DIR.${IMAGE_TYPE}.map  -DXPRJ_default=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -I"../app/inc" -I"../tinyAVR-1ser-drv/inc" -I"../hw-wrap/inc" -I"../main/inc" -I"../hardware/inc" -Wall -gdwarf-3 -mconst-data-in-progmem     $(COMPARISON_BUILD) -Wl,--memorysummary,${DISTDIR}/memoryfile.xml -o ${DISTDIR}/PROJ_DIR.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  -o ${DISTDIR}/PROJ_DIR.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -Wl,--start-group  -Wl,-lm -Wl,--end-group 
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
