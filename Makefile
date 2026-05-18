# Local Jekyll workflow for GitHub Pages.
#
# Typical order:
#   1. make install  - fetch Ruby gems pinned to the GitHub Pages versions (run once, or after editing the Gemfile).
#   2. make serve    - run the site at localhost:4000 with live reload on file changes.
#   3. make build    - generate the static site into _site/ without serving (sanity check the output).
#   4. make clean    - delete _site/ and Jekyll caches when you want a fresh build.

.PHONY: install
install:
	rm -f Gemfile.lock || true
	bundle install

.PHONY: serve
serve:
	bundle exec jekyll serve --livereload

.PHONY: build
build:
	bundle exec jekyll build

.PHONY: clean
clean:
	rm -rf _site .jekyll-cache .sass-cache
