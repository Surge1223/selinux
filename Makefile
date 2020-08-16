# Installation directories.
PREFIX ?= /usr
INCDIR = $(PREFIX)/include/selinux

ifeq ($(DEBUG),1)
	export CFLAGS = -g3 -O0 -gdwarf-2 -fno-strict-aliasing -Wall -Wshadow -Werror -Wno-format
	export LDFLAGS = -g
else
	export CFLAGS ?= -O2 -Werror -Wall -Wextra \
		-Wmissing-format-attribute \
		-Wmissing-noreturn \
		-Wpointer-arith \
		-Wshadow \
		-Wstrict-prototypes \
		-Wundef \
		-Wunused \
		-Wwrite-strings
endif

install: all
	test -d $(DESTDIR)$(INCDIR) || install -m 755 -d $(DESTDIR)$(INCDIR)
	install -m 644 $(wildcard selinux/*.h) $(DESTDIR)$(INCDIR)

relabel:

indent:
	../../scripts/Lindent $(wildcard selinux/*.h)

distclean clean:
	-rm -f selinux/*~

