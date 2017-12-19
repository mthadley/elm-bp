DIST=dist
MAIN=$(DIST)/index.js

all: elm $(DIST)/index.html $(DIST)/index.css

clean:
	@rm -fr $(DIST)

elm:
	elm-make src/Main.elm --warn --output $(MAIN)

$(DIST)/index.css: src/Styles/*.elm
	elm-css src/Styles.elm --output $(DIST) --module Styles

$(DIST)/index.html: src/index.html
	@cp src/index.html $(DIST)

test:
	@elm-test
