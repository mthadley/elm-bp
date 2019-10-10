ENVIRONMENT ?= development
OUT = dist
ELM_MAIN = $(OUT)/index.js
ELM_FILES = $(shell find src -iname "*.elm")

.PHONY: all
all: $(ELM_MAIN) $(OUT)/index.html

ifeq ($(ENVIRONMENT), production)
CFLAGS = --optimize
else
CFLAGS = --debug
endif

$(ELM_MAIN): $(ELM_FILES) node_modules
	yes | elm make src/Main.elm $(CFLAGS) --output $@
ifeq ($(ENVIRONMENT), production)
	npx terser --mangle \
		--compress "pure_funcs=[F2,F3,F4,F5,F6,F7,F8,F9,A2,A3,A4,A5,A6,A7,A8,A9]" \
		-o $@ -- $@
endif

$(OUT)/index.html: src/index.html
	@cp $< $@

node_modules: package.json package-lock.json
	npm install
	touch $@

.PHONY: test
test: node_modules
	@npx elm-test

.PHONY: watch
watch:
	@find src | entr -c make

.PHONY: format
format: node_modules
	@elm-format --yes src/ tests/

.PHONY: clean
clean:
	@rm -fr $(OUT) elm-stuff tests/elm-stuff node_modules dist
