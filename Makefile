PREFIX ?= /usr/local
BINDIR ?= $(PREFIX)/bin
LIBEXECDIR ?= $(PREFIX)/libexec

install:
	install -D -t $(DESTDIR)$(BINDIR) luthier

	install -D -t $(DESTDIR)$(LIBEXECDIR)/luthier \
	 	build freshen list purge user
