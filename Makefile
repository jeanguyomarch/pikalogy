all:
	edje_cc -v -id images pikalogy.edc

clean:
	rm *.edj

play: all
	terminology -t=./pikalogy.edj --exec="bash -l"
