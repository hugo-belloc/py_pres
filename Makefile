SRC=$(wildcard *.tex)
OPTS=--pdf --unsafe -c 'setlist arguments -shell-escape'

.PHONY: clean read

all: $(patsubst %.tex,%.pdf,$(SRC))

%.pdf: %.tex
	@rubber $(OPTS) $<

clean:
	@rubber --clean $(OPTS) $(SRC)

read:
	evince  $(patsubst %.tex,%.pdf,$(SRC))
