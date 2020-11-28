-include .config

PREFIX ?= /usr/local
BINDIR ?= $(PREFIX)/bin
LIBEXECDIR ?= $(PREFIX)/libexec
MANDIR ?= $(PREFIX)/man

install:
	install -D -t $(DESTDIR)$(BINDIR) luthier
	install -D -m 0644 -t $(DESTDIR)$(MANDIR)/man1 luthier.1

	install -D -t $(DESTDIR)$(LIBEXECDIR)/luthier \
	 	build freshen list purge user
