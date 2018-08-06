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

# If no specific libsepol.a is specified, fall back on LDFLAGS search path
# Otherwise, as $(LIBSEPOLA) already appears in the dependencies, there
# is no need to define a value for LDLIBS_LIBSEPOLA
ifeq ($(LIBSEPOLA),)
        LDLIBS_LIBSEPOLA := -l:libsepol.a
endif

all: dispol dismod

dispol: dispol.o $(LIBSEPOLA)
	$(CC) $(LDFLAGS) -o $@ $^ $(LDLIBS_LIBSEPOLA)

dismod: dismod.o $(LIBSEPOLA)
	$(CC) $(LDFLAGS) -o $@ $^ $(LDLIBS_LIBSEPOLA)

install: all
	-mkdir -p $(BINDIR)
	-mkdir -p $(MANDIR)/man8
	install -m 755 $(TARGETS) $(BINDIR)

clean:
	-rm -f dispol dismod *.o 
