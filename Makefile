CFLAGS = -m32
LFLAGS = -melf_i386 -ldl

ANT = ant

default: all

all: lib/cbc.jar lib/libcbc.a

lib/cbc.jar:
	$(ANT) compile

lib/libcbc.a:
	cd lib; $(MAKE) libcbc.a

clean:
	$(ANT) clean 
	cd lib; $(MAKE) clean
	cd test; $(MAKE) clean

test: check
check:
	cd test; $(MAKE) test

unittest:
	cd unit; $(MAKE) test
