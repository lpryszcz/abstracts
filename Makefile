all: main.pdf

%.pdf: %.tex %.bib Makefile
	pdflatex $*.tex
	bibtex $*
	pdflatex $*.tex
	pdflatex $*.tex
	-rm $*.log $*.aux
