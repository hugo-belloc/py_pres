SRC=$(wildcard *.tex)
OPTS=--pdf --unsafe -c 'setlist arguments -shell-escape'

.PHONY: distclean clean read

all: $(patsubst %.tex,%.pdf,$(SRC))

%.pdf: %.tex
	@rubber $(OPTS) $<

distclean: clean
	@- rm $(patsubst %.tex,%.pdf,$(SRC))

clean:
	@rubber --clean $(OPTS) $(SRC)

read:
	evince  $(patsubst %.tex,%.pdf,$(SRC))
