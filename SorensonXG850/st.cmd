#!bin/linux-x86/SorensonXG850

## Location of stream protocol files
epicsEnvSet("ENGINEER",                 "hxu x4394")
epicsEnvSet("LOCATION",                 "XF21IDA")
epicsEnvSet("STREAM_PROTOCOL_PATH",     "protocol")

epicsEnvSet("SYS",   			"XF:21IDA-Test")
epicsEnvSet("SYSPORT",  		"XF21IDA")
epicsEnvSet("CTSYS",			"XF:21IDA-CT")
epicsEnvSet("TSADR",			"10.0.131.28")

## Register all support components
dbLoadDatabase "dbd/SorensonXG850.dbd"
SorensonXG850_registerRecordDeviceDriver pdbbase

## Configure serial port for PS controller
drvAsynIPPortConfigure("$(SYSPORT)_PS1", "192.168.1.2:5025")
#drvAsynSerialPortConfigure("$(SYSPORT)_PS1","/dev/ttyUSB1",0,0,0)
#asynSetOption("$(SYSPORT)_PS1",0,"baud","9600")
#asynSetOption("$(SYSPORT)_PS1",0,"bits","8")
#asynSetOption("$(SYSPORT)_PS1",0,"parity","none")
#asynSetOption("$(SYSPORT)_PS1",0,"stop","1")

asynReport(1,"$(SYSPORT)_PS1")

## Load record instances
dbLoadRecords "db/asynRecord.db"
dbLoadRecords "db/sorensonxg850.db"

iocInit

