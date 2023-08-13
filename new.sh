#!/bin/bash
mkdir page/$1
cp -R template/* page/$1

echo "all:
	mkdir -p build
	../../make-page.sh $1
	../../make-source-page.sh $1
	cp build/*.html ../../build/

clean:
	rm -rf build" > page/$1/Makefile

mv page/$1/page.tex page/$1/$1.tex
