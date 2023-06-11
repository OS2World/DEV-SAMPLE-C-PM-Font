# make makefile
#
# Tools used:
#  Compile::Watcom Resource Compiler
#  Compile::GNU C
#  Make: GNU make
all : font.exe

font.exe : font.obj font.def font.res  
	gcc -Zomf font.obj font.def font.res -o font.exe
	wrc font.res

font.obj : font.c font.h 
	gcc -Wall -Zomf -c -O2 font.c -o font.obj

font.res : font.rc 
	wrc -r font.rc

clean :
	rm -rf *exe *res *obj *dll *lib
