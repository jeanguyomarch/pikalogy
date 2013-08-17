all:
	edje_cc -v -id images pikalogy.edc

clean:
	rm *.edj

play: all
	terminology -t=./pikalogy.edj

install:
	install -m 0644 pikalogy.edj /usr/local/share/terminology/themes/
	install -m 0755 pikalogy /usr/local/bin/
