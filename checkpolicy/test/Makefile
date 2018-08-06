#
# Makefile for building the dispol program
#
PREFIX ?= $(DESTDIR)/usr
BINDIR=$(PREFIX)/bin
LIBDIR ?= $(PREFIX)/lib
INCLUDEDIR ?= $(PREFIX)/include
LIBSEPOLA ?= $(LIBDIR)/libsepol.a
TARGETS=dispol dismod

CFLAGS ?= -g -Wall -W -Werror -O2 -pipe

all: dispol dismod

dispol: dispol.o $(LIBSEPOLA)

dismod: dismod.o $(LIBSEPOLA)

install: all
	-mkdir -p $(BINDIR)
	-mkdir -p $(MANDIR)/man8
	install -m 755 $(TARGETS) $(BINDIR)

clean:
	-rm -f dispol dismod *.o 
