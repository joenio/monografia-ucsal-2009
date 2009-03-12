# Makefile for Markdown + Make demonstration

#HAVE_ANTEPROJETO_TEX=$(wildcard anteprojeto.tex)

auto: pdf

bib:
	latex anteprojeto > /dev/null
	bibtex anteprojeto

pdf: bib
	pdflatex anteprojeto.tex > /dev/null
	pdflatex anteprojeto.tex > /dev/null

show: pdf
	evince anteprojeto.pdf

pkg: pdf
	tar -zcvf anteprojeto.tgz anteprojeto.pdf anteprojeto.tex anteprojeto-body.tex anteprojeto.bib Makefile

clean:
	rm -f *~
	rm -f *.pdf *.dvi
	rm -f *.log *.toc *.aux
	rm -f *.bbl *.blg
