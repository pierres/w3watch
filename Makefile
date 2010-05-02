V=1.0.0

all:

install:
	install -D -m755 w3watch $(DESTDIR)/usr/bin/w3watch
	install -D -m644 config.sample $(DESTDIR)/usr/share/doc/w3watch/config.sample

uninstall:
	rm $(DESTDIR)/usr/bin/w3watch
	rm $(DESTDIR)/usr/share/doc/w3watch/config.sample

dist:
	git archive --format=tar --prefix=w3watch-$(V)/ $(V) | gzip -9 > w3watch-$(V).tar.gz
