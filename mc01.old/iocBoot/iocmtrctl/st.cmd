#!../../bin/linux-x86_64/tpmac

## You may have to change tpmac to something else
## everywhere it appears in this file

< envPaths

cd ${TOP} #/iocBoot/${IOC}

epicsEnvSet("EPICS_CA_AUTO_ADDR_LIST", "NO")
epicsEnvSet("EPICS_CA_ADDR_LIST", "10.23.0.255")

## Register all support components
dbLoadDatabase("dbd/tpmac.dbd",0,0)
tpmac_registerRecordDeviceDriver(pdbbase) 

# pmacAsynIPConfigure() is a wrapper for drvAsynIPPort::drvAsynIPPortConfigure() and
# pmacAsynIPPort::pmacAsynIPPortConfigureEos().
# See pmacAsynIPPort.c
pmacAsynIPConfigure("P0","xf23id2-mc01:1025")

# WARNING: a trace-mask of containing 0x10 will TRACE_FLOW (v. noisy!!)
#asynSetTraceMask("P0",-1,0x9)
#asynSetTraceIOMask("P0",-1,0x2)

# pmacAsynMotorCreate(port,addr,card,nAxes)
# see pmacAsynMotor.c
#pmacAsynMotorCreate("P0", 0, 1, 4);

#New model 3 driver
#pmacCreateController(motor record port name, low level port, low level port address, num axes, moving polling period (ms), idle polling period (ms))
pmacCreateController("motor","P0",0,1,100,1000)

# Setup the motor Asyn layer (port, drvet name, card, nAxes+1)
#drvAsynMotorConfigure("motor", "pmacAsynMotor", 1, 5)

#New model 3 driver
pmacCreateAxis("motor", 1)
#pmacCreateAxis("motor", 2)

# Disable the limits disabled check for some axes (normally this should be left enabled)
# pmacDisableLimitsCheck(string portname, int axis, int allAxes)
#### disable limit check for all axes
#pmacDisableLimitsCheck("motor", 0, 1)
#### disable limit check for axis 3
#pmacDisableLimitsCheck("motor", 3, 0)

#Set the axis scale factor
#pmacSetAxisScale("motor", 1, 1)

#Set the encoder axis for an open loop axis.
#pmacSetOpenLoopEncoderAxis(const char *controller, int axis, int encoder_axis)
#pmacSetOpenLoopEncoderAxis("PMAC1", 1, 2)

# Initialize the coord-system(port,addr,cs,ref,prog#)
#pmacAsynCoordCreate("P0",0,5,5,10)
# setup the coord-sys(portName,drvel-name,ref#(from create),nAxes+1)
#drvAsynMotorConfigure("CS5","pmacAsynCoord",5,9)

# change poll rates (card, poll-period in ms)
#pmacSetMovingPollPeriod( 1, 100 )
#pmacSetIdlePollPeriod( 1, 1000 )
#pmacSetCoordMovingPollPeriod(5,200)
#pmacSetCoordIdlePollPeriod(5,2000)


## Load record instances
dbLoadTemplate("db/motor.substitutions")
dbLoadTemplate("db/autohome.substitutions")
dbLoadRecords("db/asynComm.db","P=XF:23ID2-CT{MC:01},PORT=P0,ADDR=0")

## autosave/restore machinery
save_restoreSet_Debug(0)
save_restoreSet_IncompleteSetsOk(1)
save_restoreSet_DatedBackupFiles(1)

set_savefile_path("${TOP}/as","/save")
set_requestfile_path("${TOP}/as","/req")

set_pass0_restoreFile("info_positions.sav")
set_pass0_restoreFile("info_settings.sav")
set_pass1_restoreFile("info_settings.sav")

iocInit()

## more autosave/restore machinery
cd ${TOP}/as/req
makeAutosaveFiles()
create_monitor_set("info_positions.req", 5 , "")
create_monitor_set("info_settings.req", 15 , "")

dbl > "/cf-update/xf23id2-ioc1.mc01.dbl"
