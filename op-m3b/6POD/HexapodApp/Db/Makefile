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
DB += 6Pod_Control.db
DB += 6Pod_Control.substitutions
DB += 6Pod_Positions.template
DB += 6Pod_Positions.substitutions
DB += 6Pod_CSSetpoints.template
DB += 6Pod_CSSetpoints.substitutions
DB += 6Pod_MotorStatus.substitutions
DB += 6Pod_ExtraMotorControl.substitutions
DB += 6Pod_EncoderLoss.substitutions
DB += 6Pod_DigitalChannels.substitutions

DB += $(EPICS_BASE)/db/iocAdminSoft.db
DB += $(EPICS_BASE)/db/save_restoreStatus.db

DB_INSTALLS += $(SAI)/db/SAI_DigitalChannels.template
DB_INSTALLS += $(SAI)/db/SAI_8MotorStatus.db
DB_INSTALLS += $(SAI)/db/SAI_DigitalChannels.template
DB_INSTALLS += $(SAI)/db/SAI_EncoderLoss.template
DB_INSTALLS += $(SAI)/db/SAI_MotorHoming.template
DB_INSTALLS += $(SAI)/db/SAI_MotorRecord.template
DB_INSTALLS += $(SAI)/db/SAI_SingleMotorStatus.template

#----------------------------------------------------
# If <anyname>.db template is not named <anyname>*.template add
# <anyname>_TEMPLATE = <templatename>

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE

