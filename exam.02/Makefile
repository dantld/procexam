include ../Makefile.utils
include ../Makefile.project
include ../Makefile.include

MAINPROG=exam02

all : $(MAINPROG)

$(MAINPROG) : $(MAINPROG).o $(PROJECT_COMMON_OBJECTS)/sqlerror.o

clean :
	-@rm -f $(MAINPROG)
