TOP=../..
include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE

#----------------------------------------------------
#  Optimization of db files using dbst (DEFAULT: NO)
#DB_OPT = YES

#----------------------------------------------------
# Create and install (or just install)
# databases, templates, substitutions like this
DB += Slit.db
DB += CSXCOBBaffleSlitsMotion.substitutions
DB += CSXCOBPGMMotion.substitutions
DB += CSXPCBBaffleSlitsMotion.substitutions
DB += CSXPCBPGMMotion.substitutions

DB_INSTALLS += $(EPICS_BASE)/db/iocAdminSoft.db
DB_INSTALLS += $(EPICS_BASE)/db/save_restoreStatus.db

DB_INSTALLS += $(SAI)/db/SAI_MotorRecord.template
DB_INSTALLS += $(SAI)/db/SAI_8MotorStatus.db
DB_INSTALLS += $(SAI)/db/SAI_SingleMotorStatus.template
DB_INSTALLS += $(SAI)/db/SAI_MotorHoming.template
DB_INSTALLS += $(SAI)/db/SAI_EncoderLoss.template

DB_INSTALLS += $(PGM)/db/HPMC_PGM_PMAC_Global.db
DB_INSTALLS += $(PGM)/db/HPMC_PGM.db
DB_INSTALLS += $(PGM)/db/Optics_Change.template

#----------------------------------------------------
# If <anyname>.db template is not named <anyname>*.template add
# <anyname>_TEMPLATE = <templatename>

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE

