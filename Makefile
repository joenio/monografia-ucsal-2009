# Makefile for Markdown + Make demonstration

CONVERT=markdown2pdf

all: anteprojeto.pdc
	$(CONVERT) -C anteprojeto-header.tex --toc anteprojeto.pdc

clean:
	rm -f *~
	rm -f *.pdf
