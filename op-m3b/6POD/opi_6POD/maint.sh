rm -rf opi_genericScan
rm -rf opi_uIOCSystem
rm -rf *.edl~
rm -rf *.sh~
ln -s /opt/epics/modules/uIOCSystem/opi_uIOCSystem opi_uIOCSystem
ln -s /opt/epics/modules/genericScan/opi_genericScan opi_genericScan
rm -rf /opt/epics/iocoutput/autosave/*.*
