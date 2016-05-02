#!/usr/lib/epics/bin/linux-x86_64/vactrl

## You may have to change blvac to something else
## everywhere it appears in this file
epicsEnvSet("EPICS_BASE", "/usr/lib/epics")

epicsEnvSet("EPICS_CA_AUTO_ADDR_LIST", "NO")
epicsEnvSet("EPICS_CA_ADDR_LIST", "10.23.0.255")

epicsEnvSet("STREAM_PROTOCOL_PATH", "/usr/share/epics-vactrl-dev/protocol")

## Register all support components
dbLoadDatabase("$(EPICS_BASE)/dbd/vactrl.dbd",0,0)
vactrl_registerRecordDeviceDriver(pdbbase) 

############ Asyn Communication Config ############
# cfg comms for gauge controllers

drvAsynIPPortConfigure("tsrv1-P7","xf23id2-tsrv02:4007")

drvAsynIPPortConfigure("tsrv2-P7","xf23id2-tsrv03:4007")
###################################################


############ Load record instances ################

### RGA controller
dbLoadTemplate("rga.substitutions")

### Load asynTemplate for general comms to each PORT
dbLoadTemplate("asyn.substitutions")

###################################################

## autosave/restore machinery
save_restoreSet_Debug(0)
save_restoreSet_IncompleteSetsOk(1)
save_restoreSet_DatedBackupFiles(1)
save_restoreSet_status_prefix("XF:23ID2-CT{IOC:VA_RGA}")

set_savefile_path("${TOP}/as","/save")
set_requestfile_path("${TOP}/as","/req")

dbLoadRecords("db/save_restoreStatus.db", "P=XF:23ID2-CT{IOC:VA_RGA}")

set_pass0_restoreFile("info_positions.sav")
set_pass1_restoreFile("info_positions.sav")

asSetSubstitutions("WS=csxws2")
asSetFilename("/epics/xf/23id/xf23id.acf")

dbLoadRecords("$(EPICS_BASE)/db/iocAdminSoft.db", "IOC=XF:23ID2-CT{IOC:VA_RGA}")
dbLoadRecords("$(EPICS_BASE)/db/save_restoreStatus.db", "P=XF:23ID2-CT{IOC:VA_RGA}")

iocInit()

## more autosave/restore machinery
cd ${TOP}/as/req
makeAutosaveFiles()
create_monitor_set("info_positions.req", 15 , "")

## Start any sequence programs
seq sncDegas, "Sys=XF:23ID2-VA,Dev={Mir:3-RGA:1}"
seq sncDegas, "Sys=XF:23ID2-VA,Dev={APPES-RGA:1}"


dbl("*") > "/cf-update/xf23id2-ioc1.es2-rga.dbl"

caPutLogInit("xf23id-ca:7004", 0)

