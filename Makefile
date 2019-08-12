.PHONY: clean test lint build

SHELL := /bin/bash
PATH := ./node_modules/.bin:$(PATH)

all: node_modules

node_modules: package.json
	yarn install --no-lockfile
	touch $@

test: 
	./node_modules/.bin/mocha tests/**/*.js --reporter mocha-junit-reporter --reporter-options mochaFile=./TEST-RESULTS.xml

clean:
	rm -rf ./node_modules
