NPM := npm
SASS := sass --force --sourcemap=none --style compressed

.PHONY: all build clean

all : build

clean:
	rm -rf .sass-cache

b: build
build:
	$(SASS) scss/grund.scss grund.css

s: serve
serve:
	$(SASS) --watch scss/grund.scss grund.css

publish:
	$(NPM) publish
