# DOCUMENT VARIABLES

NAME= anteprojeto monografia
TEXSRCS= header.tex
anteprojeto_TEXSRCS= anteprojeto-content.tex
monografia_TEXSRCS= monografia-content.tex
BIBTEXSRCS= bibliografia.bib

# PROJECT VARIABLES

GZCAT= zcat
USE_PDFLATEX=true # directly generate .pdf files from the .tex
VIEWPDF=evince

include /usr/share/latex-mk/latex.gmk
