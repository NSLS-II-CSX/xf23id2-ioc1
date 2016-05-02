TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE

#=============================
# Build the IOC application

PROD_IOC = SorensonXG850
# SorensonXG850.dbd will be created and installed
DBD += SorensonXG850.dbd

# SorensonXG850.dbd will be made up from these files:
SorensonXG850_DBD += base.dbd
SorensonXG850_DBD += asyn.dbd
SorensonXG850_DBD += stream.dbd
SorensonXG850_DBD += drvAsynIPPort.dbd
SorensonXG850_DBD += drvAsynSerialPort.dbd
SorensonXG850_DBD += system.dbd
SorensonXG850_DBD += devIocStats.dbd
SorensonXG850_DBD += asSupport.dbd
SorensonXG850_DBD += caPutLog.dbd

# SorensonXG850_registerRecordDeviceDriver.cpp derives from SorensonXG850.dbd
SorensonXG850_SRCS += SorensonXG850_registerRecordDeviceDriver.cpp

# Build the main IOC entry point on workstation OSs.
SorensonXG850_SRCS_DEFAULT += SorensonXG850Main.cpp
SorensonXG850_SRCS_vxWorks += -nil-

# Add support from base/src/vxWorks if needed
#SorensonXG850_OBJS_vxWorks += $(EPICS_BASE_BIN)/vxComLibrary

# Link in the code from the support library
SorensonXG850_LIBS += asyn stream 
SorensonXG850_LIBS += devIocStats autosave caPutLog

# Finally link to the EPICS Base libraries
SorensonXG850_LIBS += $(EPICS_BASE_IOC_LIBS)

#=============================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE

