build : ev3dev-ppa-keyring.gpg

ev3dev-ppa-keyring.gpg: ppa.key
	gpg --no-options --homedir . --no-default-keyring --keyring $@ --import $^

install: build
	install -d $(DESTDIR)/usr/share/keyrings/
	install -m 644 ev3dev-ppa-keyring.gpg $(DESTDIR)/usr/share/keyrings/

clean:
	rm -f *.gpg
	rm -f *.gpg~
