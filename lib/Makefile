CBC = ../bin/cbc
CBFLAGS = -O -fPIC
TARGET = libcbc.a
OBJS = stdarg.o alloca.o

CC = gcc
CFLAGS = -m32 -Wall
LFLAGS = -melf_i386 -ldl
AR_CREATE = ar crs

.SUFFIXES:
.SUFFIXES: .cb .s .o

.cb.o:
	$(CBC) $(CBFLAGS) -c $< -o $@
.s.o:
	$(CBC) -c $<

$(TARGET): $(OBJS)
	$(AR_CREATE) $(TARGET) $(OBJS)

stdarg.o: stdarg.cb

sizeof_jmpbuf: sizeof_jmpbuf.c
	$(CC) $(CFLAGS) -o $@ $<

clean:
	rm -f $(TARGET) *.o stdarg.s
