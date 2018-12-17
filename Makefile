NPM := npm
SASS := sass

.PHONY: all clean b build s serve publish

all : serve

clean:
	rm -rf .sass-cache

b: build
build:
	$(SASS) --sourcemap=none --style compressed scss/pressman.scss pressman.css

s: serve
serve:
	$(SASS) --watch scss/pressman.scss:pressman.css

publish: scss/pressman.scss
	$(NPM) publish
