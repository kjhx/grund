NPM := npm
SASS := sass

.PHONY: all build clean

all : build

clean:
	rm -rf .sass-cache

b: build
build:
	$(SASS) --no-source-map --style compressed scss/grund.scss grund.css

s: serve
serve:
	$(SASS) --no-source-map --watch scss/grund.scss:grund.css

publish: scss/grund.scss
	$(NPM) publish
