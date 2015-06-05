PREFIX := /usr/local
EDJE_CC := edje_cc

.PHONY: all clean install uninstall

all: pikalogy.edj

pikalogy.edj: pikalogy.edc default_colors.in.edc
	$(EDJE_CC) -v -id images -sd sounds pikalogy.edc pikalogy.edj

clean:
	$(RM) pikalogy.edj

install: pikalogy.edj
	install -m 0644 pikalogy.edj $(PREFIX)/share/terminology/themes/

uninstall:
	$(RM) $(PREFIX)/share/terminology/themes/pikalogy.edj

