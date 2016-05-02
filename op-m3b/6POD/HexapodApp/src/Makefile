TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE
#=============================

#=============================
# Build the IOC application

PROD_IOC = Hexapod
# Hexapod.dbd will be created and installed
DBD += Hexapod.dbd

# Hexapod.dbd will be made up from these files:
Hexapod_DBD += base.dbd
Hexapod_DBD += sscan.dbd
Hexapod_DBD += calcSupport.dbd
Hexapod_DBD += asSupport.dbd
Hexapod_DBD += aSubRecord.dbd
Hexapod_DBD += busySupport.dbd
Hexapod_DBD += stream.dbd
Hexapod_DBD += asyn.dbd
Hexapod_DBD += motorSupport.dbd
Hexapod_DBD += drvAsynIPPort.dbd
Hexapod_DBD += pmacAsynIPPort.dbd
Hexapod_DBD += pmacAsynMotor.dbd
Hexapod_DBD += system.dbd
Hexapod_DBD += devIocStats.dbd

# Include dbd files from all support applications:
#Hexapod_DBD += xxx.dbd

# Add all the support libraries needed by this IOC
#Hexapod_LIBS += xxx
Hexapod_LIBS += autosave
Hexapod_LIBS += seq pv
Hexapod_LIBS += calc
Hexapod_LIBS += sscan busy
Hexapod_LIBS += stream
Hexapod_LIBS += asyn
Hexapod_LIBS += motor
Hexapod_LIBS += pmacAsynIPPort
Hexapod_LIBS += pmacAsynMotor
Hexapod_LIBS += devIocStats

# Hexapod_registerRecordDeviceDriver.cpp derives from Hexapod.dbd
Hexapod_SRCS += Hexapod_registerRecordDeviceDriver.cpp

# Build the main IOC entry point on workstation OSs.
Hexapod_SRCS_DEFAULT += HexapodMain.cpp
Hexapod_SRCS_vxWorks += -nil-

# Add support from base/src/vxWorks if needed
#Hexapod_OBJS_vxWorks += $(EPICS_BASE_BIN)/vxComLibrary

# Finally link to the EPICS Base libraries
Hexapod_LIBS += $(EPICS_BASE_IOC_LIBS)

#===========================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE

