PREFIX := /usr/local/share
EDJE_CC := edje_cc

all: pikalogy.edj

pikalogy.edj: Makefile pikalogy.edc default_colors.in.edc
	$(EDJE_CC) -v -id images -sd sounds pikalogy.edc pikalogy.edj

clean:
	rm -f pikalogy.edj

install: pikalogy.edj
	install -m 0644 pikalogy.edj $(PREFIX)/terminology/themes/

uninstall:
	rm -f $(PREFIX)/terminology/themes/pikalogy.edj

