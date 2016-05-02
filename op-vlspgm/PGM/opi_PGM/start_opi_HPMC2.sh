export EPICS_CA_AUTO_ADDR_LIST=NO
export EPICS_CA_ADDR_LIST=127.0.0.1
export EDMPVOBJECTS=/opt/epics/extensions/edm_pref
export EDMOBJECTS=/opt/epics/extensions/edm_pref
export EDMHELPFILES=/opt/epics/extensions/src/edm/helpFiles
export EDMFILES=/opt/epics/extensions/edm_pref
export EDMDATAFILES=/opt/epics/applications/ioc/HPMCIOC/opi

/opt/epics/extensions/bin/linux-x86/edm -x -noedit -eolc -m "P=HPMC2,R=PGM,MIR=_MIR:P,GRT=_GRT:P,scan=_E_SCAN" HPMC_PGM_Main_DESY.edl
