V=1.0.3

all:

install:
	install -D -m755 w3watch $(DESTDIR)/usr/bin/w3watch
	install -D -m644 config.sample $(DESTDIR)/usr/share/doc/w3watch/config.sample

uninstall:
	rm $(DESTDIR)/usr/bin/w3watch
	rm $(DESTDIR)/usr/share/doc/w3watch/config.sample
	rmdir $(DESTDIR)/usr/share/doc/w3watch/

dist:
	git archive --format=tar --prefix=w3watch-$(V)/ $(V) | gzip -9 > w3watch-$(V).tar.gz
	gpg --detach-sign --use-agent w3watch-$(V).tar.gz
