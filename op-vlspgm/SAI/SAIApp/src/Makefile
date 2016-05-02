TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE
#=============================

#=============================
# Build the IOC application

PROD_IOC = SAI
# SAI.dbd will be created and installed
DBD += SAI.dbd

# SAI.dbd will be made up from these files:
SAI_DBD += base.dbd
SAI_DBD += sscan.dbd
SAI_DBD += calcSupport.dbd
SAI_DBD += asSupport.dbd
SAI_DBD += aSubRecord.dbd
SAI_DBD += busySupport.dbd
SAI_DBD += stream.dbd
SAI_DBD += asyn.dbd
SAI_DBD += motorSupport.dbd
SAI_DBD += drvAsynIPPort.dbd
SAI_DBD += pmacAsynIPPort.dbd
SAI_DBD += pmacAsynMotor.dbd

# Include dbd files from all support applications:
#SAI_DBD += xxx.dbd

# Add all the support libraries needed by this IOC
#SAI_LIBS += xxx
#SAI_LIBS += aSub 
SAI_LIBS += autosave
SAI_LIBS += seq pv
SAI_LIBS += calc
SAI_LIBS += sscan busy
SAI_LIBS += stream
SAI_LIBS += asyn
SAI_LIBS += motor
SAI_LIBS += pmacAsynIPPort
SAI_LIBS += pmacAsynMotor

# SAI_registerRecordDeviceDriver.cpp derives from SAI.dbd
SAI_SRCS += SAI_registerRecordDeviceDriver.cpp

# Build the main IOC entry point on workstation OSs.
SAI_SRCS_DEFAULT += SAIMain.cpp
SAI_SRCS_vxWorks += -nil-

# Add support from base/src/vxWorks if needed
#SAI_OBJS_vxWorks += $(EPICS_BASE_BIN)/vxComLibrary

# Finally link to the EPICS Base libraries
SAI_LIBS += $(EPICS_BASE_IOC_LIBS)

#===========================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE

