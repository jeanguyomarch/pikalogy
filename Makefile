PREFIX		:= /usr/local
EDJE_CC		:= edje_cc
TERMINOLOGY	:= terminology

DEFINITIONS	?=
#DEFINITIONS	:= -DWITH_SOUND

.PHONY: all clean install uninstall test

all: pikalogy.edj

pikalogy.edj: pikalogy.edc default_colors.in.edc \
   Makefile $(wildcard images/*) $(wildcard sounds/*)
	$(EDJE_CC) $(EDJE_VERBOSE) $(DEFINITIONS) -id images -sd sounds pikalogy.edc pikalogy.edj

clean:
	$(RM) pikalogy.edj

install: pikalogy.edj
	install -m 0644 pikalogy.edj $(PREFIX)/share/terminology/themes/

uninstall:
	$(RM) $(PREFIX)/share/terminology/themes/pikalogy.edj

test: pikalogy.edj
	$(TERMINOLOGY) --theme=./pikalogy.edj
