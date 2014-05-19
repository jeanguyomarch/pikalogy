all: pikalogy.edj

pikalogy.edj: Makefile pikalogy.edc default_colors.in.edc
	edje_cc -v -id images -sd sounds pikalogy.edc pikalogy.edj

clean:
	rm -vf *.edj

install:
	install -m 0644 pikalogy.edj /usr/local/share/terminology/themes/

uninstall:
	sudo rm -f /usr/local/share/terminology/themes/pikalogy.edj
