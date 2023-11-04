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
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/PROJ_DIR.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/PROJ_DIR.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS

else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../app/src/delay.c ../app/src/mcu_control.c ../app/src/measurements.c ../app/src/memory.c ../drivers/src/adc.c ../drivers/src/clock.c ../drivers/src/eeprom.c ../drivers/src/gpio.c ../drivers/src/mcu_options.c ../drivers/src/timer.c ../drivers/src/watchdog.c ../hw-wrap/src/hw_wrap.c ../main/src/main.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1819418535/delay.o ${OBJECTDIR}/_ext/1819418535/mcu_control.o ${OBJECTDIR}/_ext/1819418535/measurements.o ${OBJECTDIR}/_ext/1819418535/memory.o ${OBJECTDIR}/_ext/649243985/adc.o ${OBJECTDIR}/_ext/649243985/clock.o ${OBJECTDIR}/_ext/649243985/eeprom.o ${OBJECTDIR}/_ext/649243985/gpio.o ${OBJECTDIR}/_ext/649243985/mcu_options.o ${OBJECTDIR}/_ext/649243985/timer.o ${OBJECTDIR}/_ext/649243985/watchdog.o ${OBJECTDIR}/_ext/2047881166/hw_wrap.o ${OBJECTDIR}/_ext/565612547/main.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1819418535/delay.o.d ${OBJECTDIR}/_ext/1819418535/mcu_control.o.d ${OBJECTDIR}/_ext/1819418535/measurements.o.d ${OBJECTDIR}/_ext/1819418535/memory.o.d ${OBJECTDIR}/_ext/649243985/adc.o.d ${OBJECTDIR}/_ext/649243985/clock.o.d ${OBJECTDIR}/_ext/649243985/eeprom.o.d ${OBJECTDIR}/_ext/649243985/gpio.o.d ${OBJECTDIR}/_ext/649243985/mcu_options.o.d ${OBJECTDIR}/_ext/649243985/timer.o.d ${OBJECTDIR}/_ext/649243985/watchdog.o.d ${OBJECTDIR}/_ext/2047881166/hw_wrap.o.d ${OBJECTDIR}/_ext/565612547/main.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1819418535/delay.o ${OBJECTDIR}/_ext/1819418535/mcu_control.o ${OBJECTDIR}/_ext/1819418535/measurements.o ${OBJECTDIR}/_ext/1819418535/memory.o ${OBJECTDIR}/_ext/649243985/adc.o ${OBJECTDIR}/_ext/649243985/clock.o ${OBJECTDIR}/_ext/649243985/eeprom.o ${OBJECTDIR}/_ext/649243985/gpio.o ${OBJECTDIR}/_ext/649243985/mcu_options.o ${OBJECTDIR}/_ext/649243985/timer.o ${OBJECTDIR}/_ext/649243985/watchdog.o ${OBJECTDIR}/_ext/2047881166/hw_wrap.o ${OBJECTDIR}/_ext/565612547/main.o

# Source Files
SOURCEFILES=../app/src/delay.c ../app/src/mcu_control.c ../app/src/measurements.c ../app/src/memory.c ../drivers/src/adc.c ../drivers/src/clock.c ../drivers/src/eeprom.c ../drivers/src/gpio.c ../drivers/src/mcu_options.c ../drivers/src/timer.c ../drivers/src/watchdog.c ../hw-wrap/src/hw_wrap.c ../main/src/main.c

# Pack Options 
PACK_COMPILER_OPTIONS=-I "${DFP_DIR}/include"
PACK_COMMON_OPTIONS=-B "${DFP_DIR}/gcc/dev/attiny1617"



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
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/PROJ_DIR.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=ATtiny1617
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
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1819418535/delay.o: ../app/src/delay.c  .generated_files/d7c4352426d9500484607133c007da3e4c604037.flag .generated_files/a3639aa6a54962fd04e375cd3b0e35986e6b42af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1819418535" 
	@${RM} ${OBJECTDIR}/_ext/1819418535/delay.o.d 
	@${RM} ${OBJECTDIR}/_ext/1819418535/delay.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny1617 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -I"../app/inc" -I"../drivers/inc" -I"../hw-wrap/inc" -I"../main/inc" -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/_ext/1819418535/delay.o.d" -MT "${OBJECTDIR}/_ext/1819418535/delay.o.d" -MT ${OBJECTDIR}/_ext/1819418535/delay.o  -o ${OBJECTDIR}/_ext/1819418535/delay.o ../app/src/delay.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1819418535/mcu_control.o: ../app/src/mcu_control.c  .generated_files/1ce0c5484e3faef1a51c07a8c9d2c3cec72bf3b0.flag .generated_files/a3639aa6a54962fd04e375cd3b0e35986e6b42af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1819418535" 
	@${RM} ${OBJECTDIR}/_ext/1819418535/mcu_control.o.d 
	@${RM} ${OBJECTDIR}/_ext/1819418535/mcu_control.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny1617 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -I"../app/inc" -I"../drivers/inc" -I"../hw-wrap/inc" -I"../main/inc" -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/_ext/1819418535/mcu_control.o.d" -MT "${OBJECTDIR}/_ext/1819418535/mcu_control.o.d" -MT ${OBJECTDIR}/_ext/1819418535/mcu_control.o  -o ${OBJECTDIR}/_ext/1819418535/mcu_control.o ../app/src/mcu_control.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1819418535/measurements.o: ../app/src/measurements.c  .generated_files/91ee43a160075ddd66507ba843a33ec7c96b461.flag .generated_files/a3639aa6a54962fd04e375cd3b0e35986e6b42af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1819418535" 
	@${RM} ${OBJECTDIR}/_ext/1819418535/measurements.o.d 
	@${RM} ${OBJECTDIR}/_ext/1819418535/measurements.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny1617 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -I"../app/inc" -I"../drivers/inc" -I"../hw-wrap/inc" -I"../main/inc" -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/_ext/1819418535/measurements.o.d" -MT "${OBJECTDIR}/_ext/1819418535/measurements.o.d" -MT ${OBJECTDIR}/_ext/1819418535/measurements.o  -o ${OBJECTDIR}/_ext/1819418535/measurements.o ../app/src/measurements.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1819418535/memory.o: ../app/src/memory.c  .generated_files/647350cdd6ad7d6e30f121f3da88a4b6bb0c5698.flag .generated_files/a3639aa6a54962fd04e375cd3b0e35986e6b42af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1819418535" 
	@${RM} ${OBJECTDIR}/_ext/1819418535/memory.o.d 
	@${RM} ${OBJECTDIR}/_ext/1819418535/memory.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny1617 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -I"../app/inc" -I"../drivers/inc" -I"../hw-wrap/inc" -I"../main/inc" -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/_ext/1819418535/memory.o.d" -MT "${OBJECTDIR}/_ext/1819418535/memory.o.d" -MT ${OBJECTDIR}/_ext/1819418535/memory.o  -o ${OBJECTDIR}/_ext/1819418535/memory.o ../app/src/memory.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/649243985/adc.o: ../drivers/src/adc.c  .generated_files/366b74fccf7c378b80995d2942b34324061f242e.flag .generated_files/a3639aa6a54962fd04e375cd3b0e35986e6b42af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/649243985" 
	@${RM} ${OBJECTDIR}/_ext/649243985/adc.o.d 
	@${RM} ${OBJECTDIR}/_ext/649243985/adc.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny1617 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -I"../app/inc" -I"../drivers/inc" -I"../hw-wrap/inc" -I"../main/inc" -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/_ext/649243985/adc.o.d" -MT "${OBJECTDIR}/_ext/649243985/adc.o.d" -MT ${OBJECTDIR}/_ext/649243985/adc.o  -o ${OBJECTDIR}/_ext/649243985/adc.o ../drivers/src/adc.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/649243985/clock.o: ../drivers/src/clock.c  .generated_files/63aeb4d64bee201e2226b3506fe1fa8bee3ddc65.flag .generated_files/a3639aa6a54962fd04e375cd3b0e35986e6b42af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/649243985" 
	@${RM} ${OBJECTDIR}/_ext/649243985/clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/649243985/clock.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny1617 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -I"../app/inc" -I"../drivers/inc" -I"../hw-wrap/inc" -I"../main/inc" -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/_ext/649243985/clock.o.d" -MT "${OBJECTDIR}/_ext/649243985/clock.o.d" -MT ${OBJECTDIR}/_ext/649243985/clock.o  -o ${OBJECTDIR}/_ext/649243985/clock.o ../drivers/src/clock.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/649243985/eeprom.o: ../drivers/src/eeprom.c  .generated_files/6f0b0c33395c76d67b96cde552ab32c06be400a9.flag .generated_files/a3639aa6a54962fd04e375cd3b0e35986e6b42af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/649243985" 
	@${RM} ${OBJECTDIR}/_ext/649243985/eeprom.o.d 
	@${RM} ${OBJECTDIR}/_ext/649243985/eeprom.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny1617 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -I"../app/inc" -I"../drivers/inc" -I"../hw-wrap/inc" -I"../main/inc" -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/_ext/649243985/eeprom.o.d" -MT "${OBJECTDIR}/_ext/649243985/eeprom.o.d" -MT ${OBJECTDIR}/_ext/649243985/eeprom.o  -o ${OBJECTDIR}/_ext/649243985/eeprom.o ../drivers/src/eeprom.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/649243985/gpio.o: ../drivers/src/gpio.c  .generated_files/fb401e0b349fdac3d6bb04a2c32c9a572e65a8ea.flag .generated_files/a3639aa6a54962fd04e375cd3b0e35986e6b42af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/649243985" 
	@${RM} ${OBJECTDIR}/_ext/649243985/gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/649243985/gpio.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny1617 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -I"../app/inc" -I"../drivers/inc" -I"../hw-wrap/inc" -I"../main/inc" -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/_ext/649243985/gpio.o.d" -MT "${OBJECTDIR}/_ext/649243985/gpio.o.d" -MT ${OBJECTDIR}/_ext/649243985/gpio.o  -o ${OBJECTDIR}/_ext/649243985/gpio.o ../drivers/src/gpio.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/649243985/mcu_options.o: ../drivers/src/mcu_options.c  .generated_files/6f908af0bac650764f35f507221744afc6898106.flag .generated_files/a3639aa6a54962fd04e375cd3b0e35986e6b42af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/649243985" 
	@${RM} ${OBJECTDIR}/_ext/649243985/mcu_options.o.d 
	@${RM} ${OBJECTDIR}/_ext/649243985/mcu_options.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny1617 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -I"../app/inc" -I"../drivers/inc" -I"../hw-wrap/inc" -I"../main/inc" -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/_ext/649243985/mcu_options.o.d" -MT "${OBJECTDIR}/_ext/649243985/mcu_options.o.d" -MT ${OBJECTDIR}/_ext/649243985/mcu_options.o  -o ${OBJECTDIR}/_ext/649243985/mcu_options.o ../drivers/src/mcu_options.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/649243985/timer.o: ../drivers/src/timer.c  .generated_files/a00853565fb1e84393ce51967f06f16883c8cea6.flag .generated_files/a3639aa6a54962fd04e375cd3b0e35986e6b42af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/649243985" 
	@${RM} ${OBJECTDIR}/_ext/649243985/timer.o.d 
	@${RM} ${OBJECTDIR}/_ext/649243985/timer.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny1617 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -I"../app/inc" -I"../drivers/inc" -I"../hw-wrap/inc" -I"../main/inc" -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/_ext/649243985/timer.o.d" -MT "${OBJECTDIR}/_ext/649243985/timer.o.d" -MT ${OBJECTDIR}/_ext/649243985/timer.o  -o ${OBJECTDIR}/_ext/649243985/timer.o ../drivers/src/timer.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/649243985/watchdog.o: ../drivers/src/watchdog.c  .generated_files/122506777b874abdacfebe33ed75aa7ec9fc3206.flag .generated_files/a3639aa6a54962fd04e375cd3b0e35986e6b42af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/649243985" 
	@${RM} ${OBJECTDIR}/_ext/649243985/watchdog.o.d 
	@${RM} ${OBJECTDIR}/_ext/649243985/watchdog.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny1617 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -I"../app/inc" -I"../drivers/inc" -I"../hw-wrap/inc" -I"../main/inc" -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/_ext/649243985/watchdog.o.d" -MT "${OBJECTDIR}/_ext/649243985/watchdog.o.d" -MT ${OBJECTDIR}/_ext/649243985/watchdog.o  -o ${OBJECTDIR}/_ext/649243985/watchdog.o ../drivers/src/watchdog.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/2047881166/hw_wrap.o: ../hw-wrap/src/hw_wrap.c  .generated_files/26327e10a1aa2d7e1bf8023a9f8b89b3228bc3ea.flag .generated_files/a3639aa6a54962fd04e375cd3b0e35986e6b42af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/2047881166" 
	@${RM} ${OBJECTDIR}/_ext/2047881166/hw_wrap.o.d 
	@${RM} ${OBJECTDIR}/_ext/2047881166/hw_wrap.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny1617 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -I"../app/inc" -I"../drivers/inc" -I"../hw-wrap/inc" -I"../main/inc" -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/_ext/2047881166/hw_wrap.o.d" -MT "${OBJECTDIR}/_ext/2047881166/hw_wrap.o.d" -MT ${OBJECTDIR}/_ext/2047881166/hw_wrap.o  -o ${OBJECTDIR}/_ext/2047881166/hw_wrap.o ../hw-wrap/src/hw_wrap.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/565612547/main.o: ../main/src/main.c  .generated_files/3e6e759873ce63e4a3b18980307bf0cfefd55601.flag .generated_files/a3639aa6a54962fd04e375cd3b0e35986e6b42af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/565612547" 
	@${RM} ${OBJECTDIR}/_ext/565612547/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/565612547/main.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny1617 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG  -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -I"../app/inc" -I"../drivers/inc" -I"../hw-wrap/inc" -I"../main/inc" -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/_ext/565612547/main.o.d" -MT "${OBJECTDIR}/_ext/565612547/main.o.d" -MT ${OBJECTDIR}/_ext/565612547/main.o  -o ${OBJECTDIR}/_ext/565612547/main.o ../main/src/main.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
else
${OBJECTDIR}/_ext/1819418535/delay.o: ../app/src/delay.c  .generated_files/d99490793a54c7420eb8e27ca76e03d0660f6b1b.flag .generated_files/a3639aa6a54962fd04e375cd3b0e35986e6b42af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1819418535" 
	@${RM} ${OBJECTDIR}/_ext/1819418535/delay.o.d 
	@${RM} ${OBJECTDIR}/_ext/1819418535/delay.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny1617 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -I"../app/inc" -I"../drivers/inc" -I"../hw-wrap/inc" -I"../main/inc" -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/_ext/1819418535/delay.o.d" -MT "${OBJECTDIR}/_ext/1819418535/delay.o.d" -MT ${OBJECTDIR}/_ext/1819418535/delay.o  -o ${OBJECTDIR}/_ext/1819418535/delay.o ../app/src/delay.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1819418535/mcu_control.o: ../app/src/mcu_control.c  .generated_files/26452ad1ca2f7ece00c8ad26abdf36ea5b2bb7b1.flag .generated_files/a3639aa6a54962fd04e375cd3b0e35986e6b42af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1819418535" 
	@${RM} ${OBJECTDIR}/_ext/1819418535/mcu_control.o.d 
	@${RM} ${OBJECTDIR}/_ext/1819418535/mcu_control.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny1617 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -I"../app/inc" -I"../drivers/inc" -I"../hw-wrap/inc" -I"../main/inc" -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/_ext/1819418535/mcu_control.o.d" -MT "${OBJECTDIR}/_ext/1819418535/mcu_control.o.d" -MT ${OBJECTDIR}/_ext/1819418535/mcu_control.o  -o ${OBJECTDIR}/_ext/1819418535/mcu_control.o ../app/src/mcu_control.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1819418535/measurements.o: ../app/src/measurements.c  .generated_files/f79f1b383b6b424ecd7be2340ea0892e64ffc2c1.flag .generated_files/a3639aa6a54962fd04e375cd3b0e35986e6b42af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1819418535" 
	@${RM} ${OBJECTDIR}/_ext/1819418535/measurements.o.d 
	@${RM} ${OBJECTDIR}/_ext/1819418535/measurements.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny1617 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -I"../app/inc" -I"../drivers/inc" -I"../hw-wrap/inc" -I"../main/inc" -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/_ext/1819418535/measurements.o.d" -MT "${OBJECTDIR}/_ext/1819418535/measurements.o.d" -MT ${OBJECTDIR}/_ext/1819418535/measurements.o  -o ${OBJECTDIR}/_ext/1819418535/measurements.o ../app/src/measurements.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1819418535/memory.o: ../app/src/memory.c  .generated_files/bb6aae4cc3623fc22e6cf046ef78068946c4fc42.flag .generated_files/a3639aa6a54962fd04e375cd3b0e35986e6b42af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1819418535" 
	@${RM} ${OBJECTDIR}/_ext/1819418535/memory.o.d 
	@${RM} ${OBJECTDIR}/_ext/1819418535/memory.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny1617 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -I"../app/inc" -I"../drivers/inc" -I"../hw-wrap/inc" -I"../main/inc" -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/_ext/1819418535/memory.o.d" -MT "${OBJECTDIR}/_ext/1819418535/memory.o.d" -MT ${OBJECTDIR}/_ext/1819418535/memory.o  -o ${OBJECTDIR}/_ext/1819418535/memory.o ../app/src/memory.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/649243985/adc.o: ../drivers/src/adc.c  .generated_files/f87eefbe63834dc65a503a3fcc0365ab8d2badb1.flag .generated_files/a3639aa6a54962fd04e375cd3b0e35986e6b42af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/649243985" 
	@${RM} ${OBJECTDIR}/_ext/649243985/adc.o.d 
	@${RM} ${OBJECTDIR}/_ext/649243985/adc.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny1617 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -I"../app/inc" -I"../drivers/inc" -I"../hw-wrap/inc" -I"../main/inc" -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/_ext/649243985/adc.o.d" -MT "${OBJECTDIR}/_ext/649243985/adc.o.d" -MT ${OBJECTDIR}/_ext/649243985/adc.o  -o ${OBJECTDIR}/_ext/649243985/adc.o ../drivers/src/adc.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/649243985/clock.o: ../drivers/src/clock.c  .generated_files/cc189c22d0004f724fa7b28ce10e5407b3ef4bcc.flag .generated_files/a3639aa6a54962fd04e375cd3b0e35986e6b42af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/649243985" 
	@${RM} ${OBJECTDIR}/_ext/649243985/clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/649243985/clock.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny1617 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -I"../app/inc" -I"../drivers/inc" -I"../hw-wrap/inc" -I"../main/inc" -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/_ext/649243985/clock.o.d" -MT "${OBJECTDIR}/_ext/649243985/clock.o.d" -MT ${OBJECTDIR}/_ext/649243985/clock.o  -o ${OBJECTDIR}/_ext/649243985/clock.o ../drivers/src/clock.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/649243985/eeprom.o: ../drivers/src/eeprom.c  .generated_files/e6dd7080a101c981bbc34e4741b52a1a9720cc19.flag .generated_files/a3639aa6a54962fd04e375cd3b0e35986e6b42af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/649243985" 
	@${RM} ${OBJECTDIR}/_ext/649243985/eeprom.o.d 
	@${RM} ${OBJECTDIR}/_ext/649243985/eeprom.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny1617 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -I"../app/inc" -I"../drivers/inc" -I"../hw-wrap/inc" -I"../main/inc" -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/_ext/649243985/eeprom.o.d" -MT "${OBJECTDIR}/_ext/649243985/eeprom.o.d" -MT ${OBJECTDIR}/_ext/649243985/eeprom.o  -o ${OBJECTDIR}/_ext/649243985/eeprom.o ../drivers/src/eeprom.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/649243985/gpio.o: ../drivers/src/gpio.c  .generated_files/f2b7426649763aa2a57f41c4460a76f570f67628.flag .generated_files/a3639aa6a54962fd04e375cd3b0e35986e6b42af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/649243985" 
	@${RM} ${OBJECTDIR}/_ext/649243985/gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/649243985/gpio.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny1617 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -I"../app/inc" -I"../drivers/inc" -I"../hw-wrap/inc" -I"../main/inc" -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/_ext/649243985/gpio.o.d" -MT "${OBJECTDIR}/_ext/649243985/gpio.o.d" -MT ${OBJECTDIR}/_ext/649243985/gpio.o  -o ${OBJECTDIR}/_ext/649243985/gpio.o ../drivers/src/gpio.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/649243985/mcu_options.o: ../drivers/src/mcu_options.c  .generated_files/fe465d4c45875f28449c0d55c7340c05f763e05d.flag .generated_files/a3639aa6a54962fd04e375cd3b0e35986e6b42af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/649243985" 
	@${RM} ${OBJECTDIR}/_ext/649243985/mcu_options.o.d 
	@${RM} ${OBJECTDIR}/_ext/649243985/mcu_options.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny1617 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -I"../app/inc" -I"../drivers/inc" -I"../hw-wrap/inc" -I"../main/inc" -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/_ext/649243985/mcu_options.o.d" -MT "${OBJECTDIR}/_ext/649243985/mcu_options.o.d" -MT ${OBJECTDIR}/_ext/649243985/mcu_options.o  -o ${OBJECTDIR}/_ext/649243985/mcu_options.o ../drivers/src/mcu_options.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/649243985/timer.o: ../drivers/src/timer.c  .generated_files/e607c745d179a74ffd205259f6a811854c1c1fb4.flag .generated_files/a3639aa6a54962fd04e375cd3b0e35986e6b42af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/649243985" 
	@${RM} ${OBJECTDIR}/_ext/649243985/timer.o.d 
	@${RM} ${OBJECTDIR}/_ext/649243985/timer.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny1617 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -I"../app/inc" -I"../drivers/inc" -I"../hw-wrap/inc" -I"../main/inc" -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/_ext/649243985/timer.o.d" -MT "${OBJECTDIR}/_ext/649243985/timer.o.d" -MT ${OBJECTDIR}/_ext/649243985/timer.o  -o ${OBJECTDIR}/_ext/649243985/timer.o ../drivers/src/timer.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/649243985/watchdog.o: ../drivers/src/watchdog.c  .generated_files/c85123813e048bea03dd07b5488b87ecb4edb172.flag .generated_files/a3639aa6a54962fd04e375cd3b0e35986e6b42af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/649243985" 
	@${RM} ${OBJECTDIR}/_ext/649243985/watchdog.o.d 
	@${RM} ${OBJECTDIR}/_ext/649243985/watchdog.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny1617 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -I"../app/inc" -I"../drivers/inc" -I"../hw-wrap/inc" -I"../main/inc" -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/_ext/649243985/watchdog.o.d" -MT "${OBJECTDIR}/_ext/649243985/watchdog.o.d" -MT ${OBJECTDIR}/_ext/649243985/watchdog.o  -o ${OBJECTDIR}/_ext/649243985/watchdog.o ../drivers/src/watchdog.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/2047881166/hw_wrap.o: ../hw-wrap/src/hw_wrap.c  .generated_files/a7890cc5d23d5263dafdaf1f64572abb268e02bf.flag .generated_files/a3639aa6a54962fd04e375cd3b0e35986e6b42af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/2047881166" 
	@${RM} ${OBJECTDIR}/_ext/2047881166/hw_wrap.o.d 
	@${RM} ${OBJECTDIR}/_ext/2047881166/hw_wrap.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny1617 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -I"../app/inc" -I"../drivers/inc" -I"../hw-wrap/inc" -I"../main/inc" -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/_ext/2047881166/hw_wrap.o.d" -MT "${OBJECTDIR}/_ext/2047881166/hw_wrap.o.d" -MT ${OBJECTDIR}/_ext/2047881166/hw_wrap.o  -o ${OBJECTDIR}/_ext/2047881166/hw_wrap.o ../hw-wrap/src/hw_wrap.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/565612547/main.o: ../main/src/main.c  .generated_files/578b3e6d766aabc801bf5c5a33041f8765664f4e.flag .generated_files/a3639aa6a54962fd04e375cd3b0e35986e6b42af.flag
	@${MKDIR} "${OBJECTDIR}/_ext/565612547" 
	@${RM} ${OBJECTDIR}/_ext/565612547/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/565612547/main.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny1617 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -I"../app/inc" -I"../drivers/inc" -I"../hw-wrap/inc" -I"../main/inc" -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/_ext/565612547/main.o.d" -MT "${OBJECTDIR}/_ext/565612547/main.o.d" -MT ${OBJECTDIR}/_ext/565612547/main.o  -o ${OBJECTDIR}/_ext/565612547/main.o ../main/src/main.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/PROJ_DIR.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mmcu=attiny1617 ${PACK_COMMON_OPTIONS}   -gdwarf-2 -D__$(MP_PROCESSOR_OPTION)__  -Wl,-Map="dist\${CND_CONF}\${IMAGE_TYPE}\PROJ_DIR.${IMAGE_TYPE}.map"    -o dist/${CND_CONF}/${IMAGE_TYPE}/PROJ_DIR.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}      -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1 -Wl,--gc-sections -Wl,--start-group  -Wl,-lm -Wl,--end-group 
	
	
	
	
	
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/PROJ_DIR.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mmcu=attiny1617 ${PACK_COMMON_OPTIONS}  -D__$(MP_PROCESSOR_OPTION)__  -Wl,-Map="dist\${CND_CONF}\${IMAGE_TYPE}\PROJ_DIR.${IMAGE_TYPE}.map"    -o dist/${CND_CONF}/${IMAGE_TYPE}/PROJ_DIR.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}      -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION) -Wl,--gc-sections -Wl,--start-group  -Wl,-lm -Wl,--end-group 
	${MP_CC_DIR}\\avr-objcopy -O ihex "dist/${CND_CONF}/${IMAGE_TYPE}/PROJ_DIR.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}" "dist/${CND_CONF}/${IMAGE_TYPE}/PROJ_DIR.${IMAGE_TYPE}.hex"
	
	
	
	
	
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/default
	${RM} -r dist/default

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
