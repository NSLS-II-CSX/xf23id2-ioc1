#!/bin/bash
export EDMDATAFILES=./SAI/opi_SAI
export EPICS_CA_MAX_ARRAY_BYTES=240000

edm -x -eolc -m "P=XF,R=:ID03A-OP,A1={Mono:1-Ax:Bragg}Mtr,A2={Mono:1-Ax:X}Mtr,A3={Mono:1-Ax:P}Mtr,A4={Mono:1-Ax:R}Mtr,A5={Mono:1-Ax:SP1}Mtr,A6={Mono:1-Ax:SP2}Mtr,A7={Mono:1-Ax:SP3}Mtr,A8={Mono:1-Ax:SP4}Mtr,OP_MODE_PV=XF:ID03A-OP:OP_MODE_STS" HXN_HDCM_MainPanel.edl
