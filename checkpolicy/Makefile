#
# Makefile for building the checkpolicy program
#
PREFIX ?= /usr
BINDIR ?= $(PREFIX)/bin
MANDIR ?= $(PREFIX)/share/man
TARGETS = checkpolicy checkmodule

LEX = flex
YACC = bison -y

CFLAGS ?= -g -Wall -Werror -Wshadow -O2 -pipe -fno-strict-aliasing -D__APPLE__

# If no specific libsepol.a is specified, fall back on LDFLAGS search path
# Otherwise, as $(LIBSEPOLA) already appears in the dependencies, there
# is no need to define a value for LDLIBS_LIBSEPOLA
ifeq ($(LIBSEPOLA),)
        LDLIBS_LIBSEPOLA := -l:libsepol.a
endif

CHECKOBJS = y.tab.o lex.yy.o queue.o module_compiler.o parse_util.o \
	    policy_define.o
CHECKPOLOBJS = $(CHECKOBJS) checkpolicy.o
CHECKMODOBJS = $(CHECKOBJS) checkmodule.o

GENERATED=lex.yy.c y.tab.c y.tab.h

all:  $(TARGETS)
	$(MAKE) -C test

checkpolicy: $(CHECKPOLOBJS) $(LIBSEPOLA)
	$(CC) -o $@ $^ $(LDFLAGS) $(LDLIBS_LIBSEPOLA)

checkmodule: $(CHECKMODOBJS) $(LIBSEPOLA)
	$(CC) -o $@ $^ $(LDFLAGS) $(LDLIBS_LIBSEPOLA)

%.o: %.c 
	$(CC) $(CFLAGS) -o $@ -c $<

y.tab.o: y.tab.c
	$(CC) $(filter-out -Werror, $(CFLAGS)) -o $@ -c $<

lex.yy.o: lex.yy.c
	$(CC) $(filter-out -Werror, $(CFLAGS)) -o $@ -c $<

y.tab.c: policy_parse.y
	$(YACC) -d policy_parse.y

lex.yy.c: policy_scan.l y.tab.c
	$(LEX) policy_scan.l

install: all
	-mkdir -p $(DESTDIR)$(BINDIR)
	-mkdir -p $(DESTDIR)$(MANDIR)/man8
	install -m 755 $(TARGETS) $(DESTDIR)$(BINDIR)	
	install -m 644 checkpolicy.8 $(DESTDIR)$(MANDIR)/man8
	install -m 644 checkmodule.8 $(DESTDIR)$(MANDIR)/man8

relabel: install
	/sbin/restorecon $(DESTDIR)$(BINDIR)/checkpolicy
	/sbin/restorecon $(DESTDIR)$(BINDIR)/checkmodule

clean:
	-rm -f $(TARGETS) $(CHECKPOLOBJS) $(CHECKMODOBJS) y.tab.c y.tab.h lex.yy.c
	$(MAKE) -C test clean

indent:
	../scripts/Lindent $(filter-out $(GENERATED),$(wildcard *.[ch]))
