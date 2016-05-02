#!/bin/bash
caget=caget
caput=caput
pvprefix=$1
file=$2
$caput $1:CONF_FILE_STS 0
$file
$caput $1:CONF_FILE_STS 1



