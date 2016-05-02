#!/bin/bash
caget=caget
caput=caput
pvprefix=$1
file=`$caget -t $1:CONF_FILE_SP`
timestamp=`date`
if [ -w $file ]
then
$caput $1:CONF_FILE_STS 0
echo "## Save complete PGM configuration." > $file
echo "## saved on $timestamp." >> $file

echo "## mirror offsets"
echo "$caput $1MIR:P_OFFSETS.C" `$caget -t $1MIR:P_OFFSETS.C` >> $file
echo "$caput $1MIR:P_OFFSETS.D" `$caget -t $1MIR:P_OFFSETS.D` >> $file
echo "$caput $1MIR:P_OFFSETS.E" `$caget -t $1MIR:P_OFFSETS.E` >> $file
echo "$caput $1MIR:P_OFFSETS.F" `$caget -t $1MIR:P_OFFSETS.F` >> $file
echo "$caput $1MIR:P_OFFSETS.G" `$caget -t $1MIR:P_OFFSETS.G` >> $file
echo "$caput $1MIR:P_OFFSETS.H" `$caget -t $1MIR:P_OFFSETS.H` >> $file
echo "$caput $1MIR:P_OFFSETS.I" `$caget -t $1MIR:P_OFFSETS.I` >> $file
echo "$caput $1MIR:P_OFFSETS.J" `$caget -t $1MIR:P_OFFSETS.J` >> $file
echo "$caput $1MIR:P_OFFSETS.K" `$caget -t $1MIR:P_OFFSETS.K` >> $file
echo "$caput $1MIR:P_OFFSETS.L" `$caget -t $1MIR:P_OFFSETS.L` >> $file

echo "## mirror default positions"
echo "$caput $1MIR:X_DEF_POS.C" `$caget -t $1MIR:X_DEF_POS.C` >> $file
echo "$caput $1MIR:X_DEF_POS.D" `$caget -t $1MIR:X_DEF_POS.D` >> $file
echo "$caput $1MIR:X_DEF_POS.E" `$caget -t $1MIR:X_DEF_POS.E` >> $file
echo "$caput $1MIR:X_DEF_POS.F" `$caget -t $1MIR:X_DEF_POS.F` >> $file
echo "$caput $1MIR:X_DEF_POS.G" `$caget -t $1MIR:X_DEF_POS.G` >> $file
echo "$caput $1MIR:X_DEF_POS.H" `$caget -t $1MIR:X_DEF_POS.H` >> $file
echo "$caput $1MIR:X_DEF_POS.I" `$caget -t $1MIR:X_DEF_POS.I` >> $file
echo "$caput $1MIR:X_DEF_POS.J" `$caget -t $1MIR:X_DEF_POS.J` >> $file
echo "$caput $1MIR:X_DEF_POS.K" `$caget -t $1MIR:X_DEF_POS.K` >> $file
echo "$caput $1MIR:X_DEF_POS.L" `$caget -t $1MIR:X_DEF_POS.L` >> $file

echo "## grating offsets"
echo "$caput $1GRT:P_OFFSETS.C" `$caget -t $1GRT:P_OFFSETS.C` >> $file
echo "$caput $1GRT:P_OFFSETS.D" `$caget -t $1GRT:P_OFFSETS.D` >> $file
echo "$caput $1GRT:P_OFFSETS.E" `$caget -t $1GRT:P_OFFSETS.E` >> $file
echo "$caput $1GRT:P_OFFSETS.F" `$caget -t $1GRT:P_OFFSETS.F` >> $file
echo "$caput $1GRT:P_OFFSETS.G" `$caget -t $1GRT:P_OFFSETS.G` >> $file
echo "$caput $1GRT:P_OFFSETS.H" `$caget -t $1GRT:P_OFFSETS.H` >> $file
echo "$caput $1GRT:P_OFFSETS.I" `$caget -t $1GRT:P_OFFSETS.I` >> $file
echo "$caput $1GRT:P_OFFSETS.J" `$caget -t $1GRT:P_OFFSETS.J` >> $file
echo "$caput $1GRT:P_OFFSETS.K" `$caget -t $1GRT:P_OFFSETS.K` >> $file
echo "$caput $1GRT:P_OFFSETS.L" `$caget -t $1GRT:P_OFFSETS.L` >> $file

echo "## grating default positions"
echo "$caput $1GRT:X_DEF_POS.C" `$caget -t $1GRT:X_DEF_POS.C` >> $file
echo "$caput $1GRT:X_DEF_POS.D" `$caget -t $1GRT:X_DEF_POS.D` >> $file
echo "$caput $1GRT:X_DEF_POS.E" `$caget -t $1GRT:X_DEF_POS.E` >> $file
echo "$caput $1GRT:X_DEF_POS.F" `$caget -t $1GRT:X_DEF_POS.F` >> $file
echo "$caput $1GRT:X_DEF_POS.G" `$caget -t $1GRT:X_DEF_POS.G` >> $file
echo "$caput $1GRT:X_DEF_POS.H" `$caget -t $1GRT:X_DEF_POS.H` >> $file
echo "$caput $1GRT:X_DEF_POS.I" `$caget -t $1GRT:X_DEF_POS.I` >> $file
echo "$caput $1GRT:X_DEF_POS.J" `$caget -t $1GRT:X_DEF_POS.J` >> $file
echo "$caput $1GRT:X_DEF_POS.K" `$caget -t $1GRT:X_DEF_POS.K` >> $file
echo "$caput $1GRT:X_DEF_POS.L" `$caget -t $1GRT:X_DEF_POS.L` >> $file

echo "## grating types (lines/mm)"
echo "$caput $1GRT:TYPE_CALC.C" `$caget -t $1GRT:TYPE_CALC.C` >> $file
echo "$caput $1GRT:TYPE_CALC.D" `$caget -t $1GRT:TYPE_CALC.D` >> $file
echo "$caput $1GRT:TYPE_CALC.E" `$caget -t $1GRT:TYPE_CALC.E` >> $file
echo "$caput $1GRT:TYPE_CALC.F" `$caget -t $1GRT:TYPE_CALC.F` >> $file
echo "$caput $1GRT:TYPE_CALC.G" `$caget -t $1GRT:TYPE_CALC.G` >> $file
echo "$caput $1GRT:TYPE_CALC.H" `$caget -t $1GRT:TYPE_CALC.H` >> $file
echo "$caput $1GRT:TYPE_CALC.I" `$caget -t $1GRT:TYPE_CALC.I` >> $file
echo "$caput $1GRT:TYPE_CALC.J" `$caget -t $1GRT:TYPE_CALC.J` >> $file
echo "$caput $1GRT:TYPE_CALC.K" `$caget -t $1GRT:TYPE_CALC.K` >> $file
echo "$caput $1GRT:TYPE_CALC.L" `$caget -t $1GRT:TYPE_CALC.L` >> $file

echo "## grating b2 parameters"
echo "$caput $1GRT:B2_CALC.C" `$caget -f 18 -t $1GRT:B2_CALC.C` >> $file
echo "$caput $1GRT:B2_CALC.D" `$caget -f 18 -t $1GRT:B2_CALC.D` >> $file
echo "$caput $1GRT:B2_CALC.E" `$caget -f 18 -t $1GRT:B2_CALC.E` >> $file
echo "$caput $1GRT:B2_CALC.F" `$caget -f 18 -t $1GRT:B2_CALC.F` >> $file
echo "$caput $1GRT:B2_CALC.G" `$caget -f 18 -t $1GRT:B2_CALC.G` >> $file
echo "$caput $1GRT:B2_CALC.H" `$caget -f 18 -t $1GRT:B2_CALC.H` >> $file
echo "$caput $1GRT:B2_CALC.I" `$caget -f 18 -t $1GRT:B2_CALC.I` >> $file
echo "$caput $1GRT:B2_CALC.J" `$caget -f 18 -t $1GRT:B2_CALC.J` >> $file
echo "$caput $1GRT:B2_CALC.K" `$caget -f 18 -t $1GRT:B2_CALC.K` >> $file
echo "$caput $1GRT:B2_CALC.L" `$caget -f 18 -t $1GRT:B2_CALC.L` >> $file

echo "## grating tuning coefficients 0"
echo "$caput $1GRT:TUN0_CALC.C" `$caget -t $1GRT:TUN0_CALC.C` >> $file
echo "$caput $1GRT:TUN0_CALC.D" `$caget -t $1GRT:TUN0_CALC.D` >> $file
echo "$caput $1GRT:TUN0_CALC.E" `$caget -t $1GRT:TUN0_CALC.E` >> $file
echo "$caput $1GRT:TUN0_CALC.F" `$caget -t $1GRT:TUN0_CALC.F` >> $file
echo "$caput $1GRT:TUN0_CALC.G" `$caget -t $1GRT:TUN0_CALC.G` >> $file
echo "$caput $1GRT:TUN0_CALC.H" `$caget -t $1GRT:TUN0_CALC.H` >> $file
echo "$caput $1GRT:TUN0_CALC.I" `$caget -t $1GRT:TUN0_CALC.I` >> $file
echo "$caput $1GRT:TUN0_CALC.J" `$caget -t $1GRT:TUN0_CALC.J` >> $file
echo "$caput $1GRT:TUN0_CALC.K" `$caget -t $1GRT:TUN0_CALC.K` >> $file
echo "$caput $1GRT:TUN0_CALC.L" `$caget -t $1GRT:TUN0_CALC.L` >> $file

echo "## grating tuning coefficients 1"
echo "$caput $1GRT:TUN1_CALC.C" `$caget -t $1GRT:TUN1_CALC.C` >> $file
echo "$caput $1GRT:TUN1_CALC.D" `$caget -t $1GRT:TUN1_CALC.D` >> $file
echo "$caput $1GRT:TUN1_CALC.E" `$caget -t $1GRT:TUN1_CALC.E` >> $file
echo "$caput $1GRT:TUN1_CALC.F" `$caget -t $1GRT:TUN1_CALC.F` >> $file
echo "$caput $1GRT:TUN1_CALC.G" `$caget -t $1GRT:TUN1_CALC.G` >> $file
echo "$caput $1GRT:TUN1_CALC.H" `$caget -t $1GRT:TUN1_CALC.H` >> $file
echo "$caput $1GRT:TUN1_CALC.I" `$caget -t $1GRT:TUN1_CALC.I` >> $file
echo "$caput $1GRT:TUN1_CALC.J" `$caget -t $1GRT:TUN1_CALC.J` >> $file
echo "$caput $1GRT:TUN1_CALC.K" `$caget -t $1GRT:TUN1_CALC.K` >> $file
echo "$caput $1GRT:TUN1_CALC.L" `$caget -t $1GRT:TUN1_CALC.L` >> $file

echo "## grating tuning coefficients 2"
echo "$caput $1GRT:TUN2_CALC.C" `$caget -t $1GRT:TUN2_CALC.C` >> $file
echo "$caput $1GRT:TUN2_CALC.D" `$caget -t $1GRT:TUN2_CALC.D` >> $file
echo "$caput $1GRT:TUN2_CALC.E" `$caget -t $1GRT:TUN2_CALC.E` >> $file
echo "$caput $1GRT:TUN2_CALC.F" `$caget -t $1GRT:TUN2_CALC.F` >> $file
echo "$caput $1GRT:TUN2_CALC.G" `$caget -t $1GRT:TUN2_CALC.G` >> $file
echo "$caput $1GRT:TUN2_CALC.H" `$caget -t $1GRT:TUN2_CALC.H` >> $file
echo "$caput $1GRT:TUN2_CALC.I" `$caget -t $1GRT:TUN2_CALC.I` >> $file
echo "$caput $1GRT:TUN2_CALC.J" `$caget -t $1GRT:TUN2_CALC.J` >> $file
echo "$caput $1GRT:TUN2_CALC.K" `$caget -t $1GRT:TUN2_CALC.K` >> $file
echo "$caput $1GRT:TUN2_CALC.L" `$caget -t $1GRT:TUN2_CALC.L` >> $file

echo "## grating tuning coefficients 3"
echo "$caput $1GRT:TUN3_CALC.C" `$caget -t $1GRT:TUN3_CALC.C` >> $file
echo "$caput $1GRT:TUN3_CALC.D" `$caget -t $1GRT:TUN3_CALC.D` >> $file
echo "$caput $1GRT:TUN3_CALC.E" `$caget -t $1GRT:TUN3_CALC.E` >> $file
echo "$caput $1GRT:TUN3_CALC.F" `$caget -t $1GRT:TUN3_CALC.F` >> $file
echo "$caput $1GRT:TUN3_CALC.G" `$caget -t $1GRT:TUN3_CALC.G` >> $file
echo "$caput $1GRT:TUN3_CALC.H" `$caget -t $1GRT:TUN3_CALC.H` >> $file
echo "$caput $1GRT:TUN3_CALC.I" `$caget -t $1GRT:TUN3_CALC.I` >> $file
echo "$caput $1GRT:TUN3_CALC.J" `$caget -t $1GRT:TUN3_CALC.J` >> $file
echo "$caput $1GRT:TUN3_CALC.K" `$caget -t $1GRT:TUN3_CALC.K` >> $file
echo "$caput $1GRT:TUN3_CALC.L" `$caget -t $1GRT:TUN3_CALC.L` >> $file

echo "## grating entrance arm length"
echo "$caput $1GRT:ENTR_ARM_CALC.C" `$caget -t $1GRT:ENTR_ARM_CALC.C` >> $file
echo "$caput $1GRT:ENTR_ARM_CALC.D" `$caget -t $1GRT:ENTR_ARM_CALC.D` >> $file
echo "$caput $1GRT:ENTR_ARM_CALC.E" `$caget -t $1GRT:ENTR_ARM_CALC.E` >> $file
echo "$caput $1GRT:ENTR_ARM_CALC.F" `$caget -t $1GRT:ENTR_ARM_CALC.F` >> $file
echo "$caput $1GRT:ENTR_ARM_CALC.G" `$caget -t $1GRT:ENTR_ARM_CALC.G` >> $file
echo "$caput $1GRT:ENTR_ARM_CALC.H" `$caget -t $1GRT:ENTR_ARM_CALC.H` >> $file
echo "$caput $1GRT:ENTR_ARM_CALC.I" `$caget -t $1GRT:ENTR_ARM_CALC.I` >> $file
echo "$caput $1GRT:ENTR_ARM_CALC.J" `$caget -t $1GRT:ENTR_ARM_CALC.J` >> $file
echo "$caput $1GRT:ENTR_ARM_CALC.K" `$caget -t $1GRT:ENTR_ARM_CALC.K` >> $file
echo "$caput $1GRT:ENTR_ARM_CALC.L" `$caget -t $1GRT:ENTR_ARM_CALC.L` >> $file

echo "## grating exit arm length"
echo "$caput $1GRT:EXIT_ARM_CALC.C" `$caget -t $1GRT:EXIT_ARM_CALC.C` >> $file
echo "$caput $1GRT:EXIT_ARM_CALC.D" `$caget -t $1GRT:EXIT_ARM_CALC.D` >> $file
echo "$caput $1GRT:EXIT_ARM_CALC.E" `$caget -t $1GRT:EXIT_ARM_CALC.E` >> $file
echo "$caput $1GRT:EXIT_ARM_CALC.F" `$caget -t $1GRT:EXIT_ARM_CALC.F` >> $file
echo "$caput $1GRT:EXIT_ARM_CALC.G" `$caget -t $1GRT:EXIT_ARM_CALC.G` >> $file
echo "$caput $1GRT:EXIT_ARM_CALC.H" `$caget -t $1GRT:EXIT_ARM_CALC.H` >> $file
echo "$caput $1GRT:EXIT_ARM_CALC.I" `$caget -t $1GRT:EXIT_ARM_CALC.I` >> $file
echo "$caput $1GRT:EXIT_ARM_CALC.J" `$caget -t $1GRT:EXIT_ARM_CALC.J` >> $file
echo "$caput $1GRT:EXIT_ARM_CALC.K" `$caget -t $1GRT:EXIT_ARM_CALC.K` >> $file
echo "$caput $1GRT:EXIT_ARM_CALC.L" `$caget -t $1GRT:EXIT_ARM_CALC.L` >> $file

echo "## mirror/grating translation offset"
echo "$caput $1GRT:X.OFF" `$caget -t $1GRT:X.OFF` >> $file
echo "$caput $1MIR:X.OFF" `$caget -t $1MIR:X.OFF` >> $file

echo "$caput $1GRT:X.VELO" `$caget -t $1GRT:X.VELO` >> $file
echo "$caput $1MIR:X.VELO" `$caget -t $1MIR:X.VELO` >> $file
echo "$caput $1GRT:P.VELO" `$caget -t $1GRT:P.VELO` >> $file
echo "$caput $1MIR:P.VELO" `$caget -t $1MIR:P.VELO` >> $file
echo "$caput $1GRT:X.ACCL" `$caget -t $1GRT:X.ACCL` >> $file
echo "$caput $1MIR:X.ACCL" `$caget -t $1MIR:X.ACCL` >> $file
echo "$caput $1GRT:P.ACCL" `$caget -t $1GRT:P.ACCL` >> $file
echo "$caput $1MIR:P.ACCL" `$caget -t $1MIR:P.ACCL` >> $file
echo "$caput $1GRT:X_HVEL_SP.A" `$caget -t $1GRT:X_HVEL_SP.A` >> $file
echo "$caput $1MIR:X_HVEL_SP.A" `$caget -t $1MIR:X_HVEL_SP.A` >> $file
echo "$caput $1GRT:P_HVEL_SP.A" `$caget -t $1GRT:P_HVEL_SP.A` >> $file
echo "$caput $1MIR:P_HVEL_SP.A" `$caget -t $1MIR:P_HVEL_SP.A` >> $file

chmod a+x $file
$caput $1:CONF_FILE_STS 1
else
echo "Error, no write permission."
$caput $1:CONF_FILE_STS 6
fi


