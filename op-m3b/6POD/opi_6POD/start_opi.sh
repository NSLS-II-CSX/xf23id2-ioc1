export EPICS_CA_ADDR_LIST=127.0.0.1
export EPICS_CA_AUTO_ADDR_LIST=NO
export EPICS_CA_MAX_ARRAY_BYTES=2400000
export EDMDATAFILES="/opt/epics/modules/6POD/opi/"
edm -eolc -x -m P=FMB,R=6POD: 6Pod_TopLevel.edl
