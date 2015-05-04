filename=document
.PHONY: clean all pvc bibtex pdf read

MK=latexmk
MKFLAGS=-pdf -pdflatex="pdflatex -interaction=nonstopmode" -use-make

all:
	$(MK) $(MKFLAGS) ${filename}.tex

pvc:
	$(MK) -pvc $(MKFLAGS) ${filename}.tex

bibtex:
	bibtex ${filename}

pdf:
	pdflatex ${filename}.tex

clean:
	$(MK) -CA
	rm -f ${filename}.bbl ${filename}.brf *~

read:
	evince ${filename}
