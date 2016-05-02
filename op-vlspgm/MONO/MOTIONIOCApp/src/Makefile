TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE

#=============================
# Build the IOC support library

#LIBRARY_IOC += MOTIONIOCSupport

# xxxRecord.h will be created from xxxRecord.dbd
#DBDINC += xxxRecord
# Install devXxxSoft.dbd into <top>/dbd
#DBD += xxxSupport.dbd

# Compile and add the code to the support library
#MOTIONIOCSupport_SRCS += xxxRecord.c
#MOTIONIOCSupport_SRCS += devXxxSoft.c

# Link locally-provided code into the support library,
# rather than directly into the IOC application.
#MOTIONIOCSupport_SRCS += dbSubExample.c
#MOTIONIOCSupport_SRCS += MOTIONIOCHello.c
#MOTIONIOCSupport_SRCS += initTrace.c

#MOTIONIOCSupport_LIBS += $(EPICS_BASE_IOC_LIBS)

#=============================
# Build the IOC application

PROD_IOC = MOTIONIOC
# MOTIONIOC.dbd will be created and installed
DBD += MOTIONIOC.dbd

# MOTIONIOC.dbd will be made up from these files:
MOTIONIOC_DBD += base.dbd

MOTIONIOC_DBD += sscan.dbd
MOTIONIOC_DBD += calcSupport.dbd
MOTIONIOC_DBD += asSupport.dbd
MOTIONIOC_DBD += busySupport.dbd
MOTIONIOC_DBD += stream.dbd
MOTIONIOC_DBD += asyn.dbd
MOTIONIOC_DBD += motorSupport.dbd
MOTIONIOC_DBD += drvAsynIPPort.dbd
MOTIONIOC_DBD += pmacAsynIPPort.dbd
MOTIONIOC_DBD += pmacAsynMotor.dbd
MOTIONIOC_DBD += MOTIONIOCAppInclude.dbd
MOTIONIOC_DBD += system.dbd
MOTIONIOC_DBD += devIocStats.dbd


# MOTIONIOC_registerRecordDeviceDriver.cpp derives from MOTIONIOC.dbd
MOTIONIOC_SRCS += MOTIONIOC_registerRecordDeviceDriver.cpp

# Build the main IOC entry point on workstation OSs.
MOTIONIOC_SRCS_DEFAULT += MOTIONIOCMain.cpp
MOTIONIOC_SRCS_vxWorks += -nil-

# Add support from base/src/vxWorks if needed
#MOTIONIOC_OBJS_vxWorks += $(EPICS_BASE_BIN)/vxComLibrary

# Link in the code from the support library
#MOTIONIOC_LIBS += MOTIONIOCSupport
MOTIONIOC_LIBS += autosave
MOTIONIOC_LIBS += seq pv
MOTIONIOC_LIBS += calc
MOTIONIOC_LIBS += sscan busy
MOTIONIOC_LIBS += stream
MOTIONIOC_LIBS += asyn
MOTIONIOC_LIBS += motor
MOTIONIOC_LIBS += pmacAsynIPPort
MOTIONIOC_LIBS += pmacAsynMotor
MOTIONIOC_LIBS += devIocStats

# NOTE: To build SNL programs, SNCSEQ must be defined
# in the <top>/configure/RELEASE file

#ifneq ($(SNCSEQ),)
#    # Build sncExample into MOTIONIOCSupport
#    sncExample_SNCFLAGS += +r
#    MOTIONIOC_DBD += sncExample.dbd
#    MOTIONIOCSupport_SRCS += sncExample.stt
#    MOTIONIOCSupport_LIBS += seq pv
#    MOTIONIOC_LIBS += seq pv
#
#    # Build sncProgram as a standalone program
#    PROD_HOST += sncProgram
#    sncProgram_SNCFLAGS += +m
#    sncProgram_SRCS += sncProgram.st
#    sncProgram_LIBS += seq pv
#    sncProgram_LIBS += $(EPICS_BASE_HOST_LIBS)
#endif

# Finally link to the EPICS Base libraries
MOTIONIOC_LIBS += $(EPICS_BASE_IOC_LIBS)

#=============================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE

