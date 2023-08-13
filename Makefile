all: prg.html prf.html indist.html prg.html negligible.html ensemble.html

%.tex.html: %.tex
	@echo '<html><head><meta name="color-scheme" content="light dark"></head><body><pre style="word-wrap: break-word; white-space: pre-wrap;">' > $@
	@cat $^ >> $@
	@echo '</pre></body></html>' >> $@

%.html: %.tex
	pandoc $^ --to html --mathjax --toc --template=templates/page.html --citeproc -o $@
