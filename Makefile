# Makefile for Markdown + Make demonstration

HAVE_ANTEPROJETO_TEX=$(wildcard anteprojeto.tex)

auto: pdf

tex:
	pandoc -s -r markdown -w latex -C anteprojeto-header.tex -B anteprojeto-before-body.tex anteprojeto.pdc -o anteprojeto.tex

pdf: tex
	pdflatex anteprojeto.tex >> /dev/null
	pdflatex anteprojeto.tex >> /dev/null

show: pdf
	evince anteprojeto.pdf

clean:
	rm -f *~
	rm -f *.pdf
	rm -f *.log *.toc *.aux
ifneq ($(strip $(HAVE_ANTEPROJETO_TEX)),)
	rm anteprojeto.tex
endif
