# DOCUMENT VARIABLES

NAME= anteprojeto monografia
TEXSRCS= header.tex
anteprojeto_TEXSRCS= anteprojeto-content.tex
monografia_TEXSRCS= monografia-content.tex
BIBTEXSRCS= bibliografia.bib

# PROJECT VARIABLES

GZCAT= zcat
VIEWPDF= xpdf

include /usr/share/latex-mk/latex.gmk
