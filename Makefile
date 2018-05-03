PROJECT=paper
TEX_FILES=$(wildcard *.tex tex/*.tex tex/*.bib)

all: $(PROJECT).pdf

$(PROJECT).pdf: $(TEX_FILES)
	pdflatex $(PROJECT).tex
	bibtex $(PROJECT).aux
	pdflatex $(PROJECT).tex
	pdflatex $(PROJECT).tex

clean:
	rm -f *.aux *.log *.out *.blg *.bbl *.pdf *.synctex.gz *.cut
