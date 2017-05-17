include ../Makefile.utils
include ../Makefile.project
include ../Makefile.include


all :
	echo Use "install" or "drop" target names.

install:
	sqlplus $(ORAUSR)/$(ORAPWD)@$(ORATNS) @install.sql

drop:
	sqlplus $(ORAUSR)/$(ORAPWD)@$(ORATNS) @deinstall.sql

adduser:
	sqlplus /NOLOG @adduser.sql

deluser:
	sqlplus /NOLOG @deluser.sql
