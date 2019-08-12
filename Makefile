.PHONY: clean test lint build

SHELL := /bin/bash
PATH := ./node_modules/.bin:$(PATH)

all: node_modules

node_modules: package.json
	yarn install --no-lockfile
	touch $@

test: 
	mocha ./tests/

clean:
	rm -rf ./node_modules
