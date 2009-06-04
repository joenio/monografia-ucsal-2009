# DOCUMENT VARIABLES

NAME= anteprojeto monografia slides
TEXSRCS= header.tex
anteprojeto_TEXSRCS= anteprojeto-content.tex
monografia_TEXSRCS= monografia-content.tex monografia-apendices.tex
anteprojeto_BIBTEXSRCS= bibliografia.bib
monografia_BIBTEXSRCS= bibliografia.bib
CLEAN_FILES+= *.sigla* *symbols* imagens/*~ *.nav *.snm

# PROJECT VARIABLES

GZCAT= zcat
USE_PDFLATEX= true # directly generate .pdf files from the .tex
VIEWPDF= evince
MAKEIDX_FLAGS= '-s tabela-siglas.ist -o monografia.sigla monografia.siglax'

include /usr/share/latex-mk/latex.gmk
