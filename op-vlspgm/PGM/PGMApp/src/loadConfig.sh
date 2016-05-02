#!/bin/bash
caget=caget
caput=caput
pvprefix=$1
file=`$caget -t $1:CONF_FILE_SP`
$caput $1:CONF_FILE_STS 0
$file
$caput $1:CONF_FILE_STS 1



