#!/bin/bash

pandoc $1.tex --to html --mathjax --template=../../pandoc-page-template.html --citeproc -o build/$1.html
