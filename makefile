all: weave
# preproces m4 files
# noweb.m4.org -> noweb.orgmode
%.nom: %.n4o tmp
	m4 $< > $@

N4O= $(wildcard *.n4o)

NOWEB_SOURCES=$(N4O:n4o=nom)

env:
	echo $(NOWEB_SOURCES)

weave: $(NOWEB_SOURCES)
	noweb -t $(NOWEB_SOURCES) 


DEFAULT: weave
