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

drvAsynIPPortConfigure("tsrv1-P1","xf23id2-tsrv02:4001")
drvAsynIPPortConfigure("tsrv1-P2","xf23id2-tsrv02:4002")
drvAsynIPPortConfigure("tsrv1-P3","xf23id2-tsrv02:4003")
drvAsynIPPortConfigure("tsrv1-P4","xf23id2-tsrv02:4004")
drvAsynIPPortConfigure("tsrv1-P5","xf23id2-tsrv02:4005")
drvAsynIPPortConfigure("tsrv1-P6","xf23id2-tsrv02:4006")

drvAsynIPPortConfigure("tsrv1-P9","xf23id2-tsrv02:4009")
drvAsynIPPortConfigure("tsrv1-P10","xf23id2-tsrv02:4010")
drvAsynIPPortConfigure("tsrv1-P11","xf23id2-tsrv02:4011")
drvAsynIPPortConfigure("tsrv1-P12","xf23id2-tsrv02:4012")
drvAsynIPPortConfigure("tsrv1-P13","xf23id2-tsrv02:4013")
drvAsynIPPortConfigure("tsrv1-P14","xf23id2-tsrv02:4014")

drvAsynIPPortConfigure("tsrv2-P1","xf23id2-tsrv03:4001")
drvAsynIPPortConfigure("tsrv2-P2","xf23id2-tsrv03:4002")
drvAsynIPPortConfigure("tsrv2-P3","xf23id2-tsrv03:4003")
drvAsynIPPortConfigure("tsrv2-P4","xf23id2-tsrv03:4004")
drvAsynIPPortConfigure("tsrv2-P5","xf23id2-tsrv03:4005")
drvAsynIPPortConfigure("tsrv2-P9","xf23id2-tsrv03:4009")
drvAsynIPPortConfigure("tsrv2-P10","xf23id2-tsrv03:4010")
###################################################



############ Load record instances ################
### gauge controller
dbLoadTemplate("vgc.substitutions")

### pump controller
dbLoadTemplate("ipc.substitutions")


### Load asynTemplate for general comms to each PORT
dbLoadTemplate("asyn.substitutions")

###################################################

## autosave/restore machinery
save_restoreSet_Debug(0)
save_restoreSet_IncompleteSetsOk(1)
save_restoreSet_DatedBackupFiles(1)
save_restoreSet_status_prefix("XF:23ID2-CT{IOC:VA}")

set_savefile_path("${TOP}/as","/save")
set_requestfile_path("${TOP}/as","/req")

dbLoadRecords("db/save_restoreStatus.db", "P=XF:23ID2-CT{IOC:VA}")

set_pass0_restoreFile("info_positions.sav")
set_pass1_restoreFile("info_positions.sav")

asSetSubstitutions("WS=csxws2")
asSetFilename("/epics/xf/23id/xf23id.acf")

dbLoadRecords("$(EPICS_BASE)/db/iocAdminSoft.db", "IOC=XF:23ID2-CT{IOC:VA}")
dbLoadRecords("$(EPICS_BASE)/db/save_restoreStatus.db", "P=XF:23ID2-CT{IOC:VA}")

iocInit()

## more autosave/restore machinery
cd ${TOP}/as/req
makeAutosaveFiles()
create_monitor_set("info_positions.req", 15 , "")

## Start any sequence programs

dbl("*") > "/cf-update/xf23id2-ioc1.va-01.dbl"

caPutLogInit("xf23id-ca:7004", 0)

