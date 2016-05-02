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
DB += HPMC_PGM_PMAC_Global.db
DB += HPMC_PGM_PMAC_Global.substitutions
DB += HPMC_PGM.db
DB += HPMC_PGM.substitutions
DB += AnalogInput.template
DB += PMAC_12Bit_AI.db
DB += Optics_Change.template
DB += Optics_Change.substitutions
DB += PGM_IOCsystem.substitutions

#----------------------------------------------------
# If <anyname>.db template is not named <anyname>*.template add
# <anyname>_TEMPLATE = <templatename>

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE

