#!bin/linux-x86_64/es2-eps

#to suppress annoying CA beacon (send to "10.0.134.63:5065") error 
epicsEnvSet("EPICS_CA_AUTO_ADDR_LIST", "NO")
epicsEnvSet("EPICS_CA_ADDR_LIST", "10.23.0.255")

epicsEnvSet("ENGINEER",                 "hxu x4394")
epicsEnvSet("LOCATION",                 "23ID RG:E3")
epicsEnvSet("SYS",   			"XF23ID2")
epicsEnvSet("PLCADR",			"10.23.2.45")
epicsEnvSet("CTSYS",			"XF:23ID2-CT")

## Register all support components
dbLoadDatabase "dbd/es2-eps.dbd"
es2_eps_registerRecordDeviceDriver pdbbase

## Load record instances
# PLC initialization
EIP_buffer_limit(494)
drvEtherIP_init()
drvEtherIP_define_PLC("$(SYS)_EPS","$(PLCADR)",0)
EIP_verbosity(6)

## Load record instances
dbLoadRecords("db/es2-eps-va.db")
dbLoadRecords("db/es2-eps-tc.db")
dbLoadRecords("db/es2-eps-misc.db")

# Database for control
dbLoadRecords("db/iocAdminSoft.db", "IOC=$(CTSYS){IOC:EPS}")
dbLoadRecords("db/save_restoreStatus.db", "P=$(CTSYS){IOC:EPS}")
save_restoreSet_status_prefix("$(CTSYS){IOC:EPS}")

set_savefile_path("as","/save")
set_requestfile_path("as","/req")
set_pass0_restoreFile("ioc_values.sav")

asSetSubstitutions("WS=csxws2")
asSetFilename("/epics/xf/23id/xf23id.acf")

iocInit
dbl > records.dbl
system "cp records.dbl /cf-update/xf23id2-ioc1.ct-eps.dbl"

caPutLogInit("xf23id-ca:7004", 0)

makeAutosaveFileFromDbInfo("as/req/ioc_values.req","autosaveFields_pass0")
create_monitor_set("ioc_values.req",5,"")

