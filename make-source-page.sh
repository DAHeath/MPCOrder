#!/bin/bash
echo '<html><head><meta name="color-scheme" content="light dark"></head><body><pre style="word-wrap: break-word; white-space: pre-wrap;">' > build/$1.tex.html
cat $1.tex >> build/$1.tex.html
echo '</pre></body></html>' >> build/$1.tex.html
