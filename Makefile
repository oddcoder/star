CC=gcc
CFLAGS= -Wall -Wextra -Wfloat-equal -Wundef -Werror -std=gnu99 -fverbose-asm  -Wshadow -Wpointer-arith -Wcast-align -Wstrict-prototypes -Wstrict-overflow=5 -Wwrite-strings -Wconversion
GDBFLAGS= -g -ggdb -ggdb3
.PHONY: all clean docs help
help:
	@echo "make [target]";
	@echo "list of possible targets";
	@echo "install : intall the binaries to /opt";
	@echo "remove  : remove the installed files";
	@echo "all     : release build";
	@echo "docs    : build  the documentation";
	@echo "debug   : debug build";
	@echo "clean   : clean directory from all builds"
remove:
	\rm -rf /opt/star /bin/star
install: all
	mkdir /opt/star/
	cp star /opt/star
	cp help.doc /opt/star
	ln /opt/star/star /bin/star
all:star
docs:
	doxygen
star: main.o help.o tar.o untar.o general.o regular.o dir.o
	$(CC) $(CFLAGS) *.o -o star
	strip star
main.o: main.c star.h 
	$(CC) -c $(CFLAGS) main.c -o main.o
help.o: help.c star.h
	$(CC) -c $(CFLAGS) help.c -o help.o
tar.o: tar.c star.h
	$(CC) -c $(CFLAGS) tar.c -o tar.o
untar.o: untar.c star.h
	$(CC) -c $(CFLAGS) untar.c -o untar.o
general.o: general.c star.h
	$(CC) -c $(CFLAGS) general.c -o general.o
regular.o: regular.c star.h
	$(CC) -c $(CFLAGS) regular.c -o regular.o
dir.o: star.h
	$(CC) -c $(CFLAGS) dir.c -o dir.o
clean:
	\rm -rf *.o star docs
debug: CFLAGS += $(GDBFLAGS)
debug: all
