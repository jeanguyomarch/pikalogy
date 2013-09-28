all:
	edje_cc -v -id images -sd sounds pikalogy.edc

clean:
	rm -vf *.edj

play: all
	terminology -t=./pikalogy.edj

install:
	install -m 0644 pikalogy.edj /usr/local/share/terminology/themes/

uninstall:
	sudo rm -f /usr/local/share/terminology/themes/pikalogy.edj
