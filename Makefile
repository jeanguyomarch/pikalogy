PREFIX		:= /usr/local
EDJE_CC		:= edje_cc
TERMINOLOGY	:= terminology

V		:= 0
AT_0		:= @
AT_1		:=
AT		:= $(AT_$(V))

EDJE_VERBOSE_0	:=
EDJE_VERBOSE_1	:= -v
EDJE_VERBOSE	:= $(EDJE_VERBOSE_$(V))

DEFINITIONS	:=

.PHONY: all clean install uninstall test

all: pikalogy.edj

pikalogy.edj: pikalogy.edc default_colors.in.edc
	@echo "  EDJ       $@"
	$(AT)$(EDJE_CC) $(EDJE_VERBOSE) $(DEFINITIONS) -id images -sd sounds pikalogy.edc pikalogy.edj

clean:
	$(RM) pikalogy.edj

install: pikalogy.edj
	@echo "  INSTALL   $<"
	$(AT)install -m 0644 pikalogy.edj $(PREFIX)/share/terminology/themes/

uninstall:
	$(RM) $(PREFIX)/share/terminology/themes/pikalogy.edj

test: pikalogy.edj
	$(TERMINOLOGY) --theme=./pikalogy.edj

