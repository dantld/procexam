.PHONY: all clean sql-install sql-drop

all :
	$(foreach dir,$(wildcard exam.[0-9][0-9]),make -C $(dir) all)

clean :
	$(foreach dir,$(wildcard exam.[0-9][0-9]),make -C $(dir) clean)
	@find . -type f -a -name \*.o   -exec rm -f {} \;
	@find . -type f -a -name \*.d   -exec rm -f {} \;
	@find . -type f -a -name \*.lis -exec rm -f {} \;
	@find . -type f -a -name \*.log -exec rm -f {} \;

sql-install :
	make -C sql install

sql-drop :
	make -C sql drop

sql-adduser :
	make -C sql adduser

sql-deluser :
	make -C sql deluser
