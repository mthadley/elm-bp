DIST=dist
MAIN=$(DIST)/index.js

all: elm css html

clean:
	@rm -fr $(DIST)

elm:
	elm-make src/Main.elm --warn --output $(MAIN)

css:
	elm-css src/Styles.elm --output $(DIST) --module Styles

html: src/index.html
	@cp src/index.html $(DIST)

test:
	@elm-test
