#!../../bin/linux-x86_64/Hexapod

< envPaths

cd ${TOP}

epicsEnvSet("EPICS_CA_AUTO_ADDR_LIST","NO")
epicsEnvSet("EPICS_CA_ADDR_LIST","10.23.0.255")

## Register all support components
dbLoadDatabase("dbd/Hexapod.dbd",0,0)
Hexapod_registerRecordDeviceDriver(pdbbase)

## Configure DeltaTau PMAC motion controller(s)
pmacAsynIPConfigure("pmac", "xf23id2-mc09.cs.nsls2.local:1025")
pmacAsynMotorCreate("pmac", 0, 0, 9)
drvAsynMotorConfigure("PMAC", "pmacAsynMotor", 0, 9)
pmacSetIdlePollPeriod(0,300)
pmacSetMovingPollPeriod(0,100)

## configuration for stream
epicsEnvSet ("STREAM_PROTOCOL_PATH", "HexapodApp/src:../SAI/SAIApp/src")

## Substitutions
## hexapod
dbLoadTemplate("db/6Pod_Control.substitutions")
dbLoadTemplate("db/6Pod_Positions.substitutions")
dbLoadTemplate("db/6Pod_CSSetpoints.substitutions")

## SAI features 
dbLoadTemplate("db/6Pod_MotorStatus.substitutions")
dbLoadTemplate("db/6Pod_EncoderLoss.substitutions")
dbLoadTemplate("db/6Pod_DigitalChannels.substitutions")

# Configure local IOC information
epicsEnvSet("ENGINEER", "Daron Chabot")
epicsEnvSet("LOCATION", "23-ID:2")
dbLoadRecords("db/iocAdminSoft.db", "IOC=XF:23ID2-CT{IOC:M3B}")
# Configure save/restore status info
dbLoadRecords("db/save_restoreStatus.db", "P=XF:23ID2-CT{IOC:M3B}")


# Save Restore

set_savefile_path("${TOP}/as","/save")
set_requestfile_path("${TOP}/as","/req")
system("install -m 777 -d ${TOP}/as/save")
system("install -m 777 -d ${TOP}/as/req")

set_pass0_restoreFile("ioc_settings.sav")
#set_pass1_restoreFile("ioc_pass1_settings.sav")
#set_pass0_restoreFile("ioc_values.sav")
#set_pass1_restoreFile("ioc_values.sav")
#set_pass1_restoreFile("ioc_waveforms.sav")

asSetSubstitutions("WS=csxws2")
asSetFilename("/epics/xf/23id/xf23id.acf")

iocInit()

makeAutosaveFileFromDbInfo("as/req/ioc_settings.req", "autosaveFields_pass0")
create_monitor_set("ioc_settings.req", 5, "")
#makeAutosaveFileFromDbInfo("as/req/ioc_pass1_settings.req", "autosaveFields_pass1")
#makeAutosaveFileFromDbInfo("as/req/mrf_settings.req", "autosaveFields_pass0")
#makeAutosaveFileFromDbInfo("as/req/mrf_values.req", "autosaveFields")
#makeAutosaveFileFromDbInfo("as/req/mrf_waveforms.req", "autosaveFields_pass1")

# Dump IOC information
dbl > records.dbl
system "cp records.dbl /cf-update/xf23id2-ioc1.op-m3b.dbl"


