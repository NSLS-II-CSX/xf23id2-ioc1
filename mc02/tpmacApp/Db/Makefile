TOP=../..
include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE

#----------------------------------------------------
#  Optimization of db files using dbst (DEFAULT: NO)
#DB_OPT = YES

#----------------------------------------------------
# Create and install (or just install) into <top>/db
# databases, templates, substitutions like this
DB += motor.db
DB += motor.substitutions
DB += motor_homing.template
DB += motor_homing.substitutions
DB += 8MotorStatus.template
DB += SingleMotorStatus.template
DB += motor_status.substitutions
DB += asynComm.db
DB += gratings.template
DB += gratings.substitutions
DB += optics_change.template
DB += optics_change.substitutions
DB += vlspgm.template
DB += vlspgm.substitutions
DB += undulator.db
DB += selector.template
DB += tables.template
DB += interp.substitutions
DB += fb_epid.substitutions
DB += fb_epid.db
DB += PI_E625.template
DB += PI_E625.substitutions
#----------------------------------------------------
# If <anyname>.db template is not named <anyname>*.template add
# <anyname>_template = <templatename>

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE

