TOP=../..

include $(TOP)/configure/CONFIG

#=============================
# Build the IOC application

PROD_IOC = es2-eps
# es2-eps.dbd will be created and installed
DBD += es2-eps.dbd

# es2-eps.dbd will be made up from these files:
es2-eps_DBD += base.dbd
es2-eps_DBD += ether_ip.dbd
es2-eps_DBD += system.dbd
es2-eps_DBD += devIocStats.dbd
es2-eps_DBD += asSupport.dbd
es2-eps_DBD += caPutLog.dbd

# es2-eps_registerRecordDeviceDriver.cpp derives from es2-eps.dbd
es2-eps_SRCS += es2-eps_registerRecordDeviceDriver.cpp

# Build the main IOC entry point on workstation OSs.
es2-eps_SRCS_DEFAULT += es2-epsMain.cpp
es2-eps_SRCS_vxWorks += -nil-

# Add support from base/src/vxWorks if needed
#es2-eps_OBJS_vxWorks += $(EPICS_BASE_BIN)/vxComLibrary

# Link in the code from the support library
es2-eps_LIBS += ether_ip devIocStats autosave caPutLog

# Finally link to the EPICS Base libraries
es2-eps_LIBS += $(EPICS_BASE_IOC_LIBS)

#=============================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE

