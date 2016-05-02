TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE
#=============================

#=============================
# Build the IOC application

PROD_IOC = PGM
# PGM.dbd will be created and installed
DBD += PGM.dbd

# PGM.dbd will be made up from these files:
PGM_DBD += base.dbd
PGM_DBD += sscan.dbd
PGM_DBD += calcSupport.dbd
PGM_DBD += asSupport.dbd
PGM_DBD += busySupport.dbd
PGM_DBD += stream.dbd
PGM_DBD += asyn.dbd
PGM_DBD += motorSupport.dbd
PGM_DBD += drvAsynIPPort.dbd
PGM_DBD += pmacAsynIPPort.dbd
PGM_DBD += pmacAsynMotor.dbd

# Include dbd files from all support applications:
#PGM_DBD += xxx.dbd
#PGM_DBD += analyticalPGM.dbd

# Add all the support libraries needed by this IOC
#PGM_LIBS += xxx
PGM_LIBS += autosave
PGM_LIBS += seq pv
PGM_LIBS += calc
PGM_LIBS += sscan busy
PGM_LIBS += stream
PGM_LIBS += asyn
PGM_LIBS += motor
PGM_LIBS += pmacAsynIPPort
PGM_LIBS += pmacAsynMotor

# PGM_registerRecordDeviceDriver.cpp derives from PGM.dbd
PGM_SRCS += PGM_registerRecordDeviceDriver.cpp

# Build the main IOC entry point on workstation OSs.
PGM_SRCS +=PGMMain.cpp
#PGM_SRCS +=analyticalPGM.c

#PGM_SRCS_DEFAULT += PGMMain.cpp
#PGM_SRCS_vxWorks += -nil-

# Add support from base/src/vxWorks if needed
#PGM_OBJS_vxWorks += $(EPICS_BASE_BIN)/vxComLibrary

# Finally link to the EPICS Base libraries
PGM_LIBS += $(EPICS_BASE_IOC_LIBS)

#===========================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE

