DIST=dist
MAIN=$(DIST)/index.js

all: elm $(DIST)/index.html

clean:
	@rm -fr $(DIST)

elm:
	elm-make src/Main.elm --warn --output $(MAIN)

$(DIST)/index.html: src/index.html
	@cp src/index.html $(DIST)

test:
	@elm-test
