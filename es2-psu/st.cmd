#!/epics/iocs/SorensonXG850/bin/linux-x86_64/SorensonXG850

## You may have to change blvac to something else
## everywhere it appears in this file
epicsEnvSet("EPICS_BASE", "/usr/lib/epics")

epicsEnvSet("EPICS_CA_AUTO_ADDR_LIST", "NO")
epicsEnvSet("EPICS_CA_ADDR_LIST", "10.23.0.255")

epicsEnvSet("STREAM_PROTOCOL_PATH", "/epics/iocs/SorensonXG850/protocol")

## Register all support components
dbLoadDatabase("/epics/iocs/SorensonXG850/dbd/SorensonXG850.dbd",0,0)
SorensonXG850_registerRecordDeviceDriver(pdbbase)

############ Asyn Communication Config ############

drvAsynIPPortConfigure("XF23ID2_PSU1","10.23.2.65:4004")

###################################################


############ Load record instances ################

### PS controller
dbLoadTemplate("es2-psu1.substitutions")

### Load asynTemplate for general comms to each PORT
dbLoadTemplate("asyn.substitutions")

###################################################

## autosave/restore machinery
save_restoreSet_Debug(0)
save_restoreSet_IncompleteSetsOk(1)
save_restoreSet_DatedBackupFiles(1)
save_restoreSet_status_prefix("XF:23ID2-CT{IOC:PSU}")

set_savefile_path("as","/save")
set_requestfile_path("as","/req")

dbLoadRecords("/usr/lib/epics/db/save_restoreStatus.db", "P=XF:23ID2-CT{IOC:PSU}")

set_pass0_restoreFile("info_positions.sav")
set_pass1_restoreFile("info_positions.sav")

asSetSubstitutions("WS=csxws2")
asSetFilename("/epics/xf/23id/xf23id.acf")

dbLoadRecords("$(EPICS_BASE)/db/iocAdminSoft.db", "IOC=XF:23ID2-CT{IOC:PSU}")
dbLoadRecords("$(EPICS_BASE)/db/save_restoreStatus.db", "P=XF:23ID2-CT{IOC:PSU}")

iocInit()

## more autosave/restore machinery
cd ${TOP}/as/req
makeAutosaveFiles()
create_monitor_set("info_positions.req", 15 , "")

dbl("*") > "/cf-update/xf23id2-ioc1.es2-psu.dbl"

caPutLogInit("xf23id-ca:7004", 0)

