# Makefile for Markdown + Make demonstration

HAVE_ANTEPROJETO_TEX=$(wildcard anteprojeto.tex)

auto: pdf

tex:
	pandoc -s -r markdown -w latex -C anteprojeto-header.tex -B anteprojeto-before-body.tex -A anteprojeto-after-body.tex anteprojeto.pdc -o anteprojeto.tex

bib: tex
	latex anteprojeto > /dev/null
	bibtex anteprojeto

pdf: tex bib
	pdflatex anteprojeto.tex > /dev/null
	pdflatex anteprojeto.tex > /dev/null

show: pdf
	evince anteprojeto.pdf

clean:
	rm -f *~
	rm -f *.pdf *.dvi
	rm -f *.log *.toc *.aux
	rm -f *.bbl *.blg
ifneq ($(strip $(HAVE_ANTEPROJETO_TEX)),)
	rm anteprojeto.tex
endif
