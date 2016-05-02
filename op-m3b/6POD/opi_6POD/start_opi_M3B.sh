#!/bin/bash
export EPICS_CA_AUTO_ADDR_LIST="NO"
#export EPICS_CA_ADDR_LIST="127.0.0.1 192.168.0.5"
export EPICS_CA_ADDR_LIST="10.23.0.255"
# 192.168.0.1 - reserved
# 192.168.0.2 - reserved
# 192.168.0.3 - reserved
# 192.168.0.4 - Hexapod M1A
# 192.168.0.5 - Hexapod M3B
# 192.168.0.6 - reserved
# 192.168.0.7 - reserved
export EDMDATAFILES=/epics/iocs/M3B/M3B_6POD/opi_6POD
#export EDMDATAFILES=/opt/epics/modules/6POD/opi_6POD
#export EDMDATAFILES=/opt/epics/opi/6POD_M1/opi_6POD
#export EDMDATAFILES=/opt/epics/opi
export EPICS_CA_MAX_ARRAY_BYTES=240000

edm -eolc -x -m "P=XF:23ID-OP:2,R={Mir:3B-Ax:,LEG1=1}Mtr,LEG2=2}Mtr,LEG3=3}Mtr,LEG4=4}Mtr,LEG5=5}Mtr,LEG6=6}Mtr,S=M3B,T={Mir:3B},TX=X}Mtr,TY=Y}Mtr,TZ=Z}Mtr,RX=Pit}Mtr,RY=Yaw}Mtr,RZ=Rol}Mtr,OP_MODE_PV=XF:23ID-OP:2{Mir:3B}OP_MODE_STS" 6Pod_TopLevel_M3B.edl
