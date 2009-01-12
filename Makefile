# Makefile for Markdown + Make demonstration

CONVERT=markdown2pdf

all: anteprojeto.pdc
	$(CONVERT) anteprojeto.pdc

clean:
	rm -f *~
	rm -f *.pdf
	rm -f *.tex
