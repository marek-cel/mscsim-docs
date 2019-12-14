TEX_FILES=\
	fdm.tex

BIBLIOGRAPHY=bibliography.bib

################################################################################

.SUFFIXES: .tex .aux
.SUFFIXES: .tex .bbl
.SUFFIXES: .tex .pdf

all: $(TEX_FILES:.tex=.aux) $(TEX_FILES:.tex=.bbl) $(TEX_FILES:.tex=.pdf)

.tex.aux: $(TEX_FILES)
	@echo -e 'Compiling file: $*.aux'
	@latex $*.tex

.tex.bbl: $(TEX_FILES)
	@echo -e 'Compiling file: $*.bbl'
	cp ${BIBLIOGRAPHY} $*.bib
	@bibtex $*

# .tex.pdf: $(TEX_FILES)
# 	@echo -e 'Compiling file: $*.pdf'
# 	@latex $*.tex
# 	@latex $*.tex
# 	@dvipdf $*.dvi

.tex.pdf: $(TEX_FILES)
	@echo -e 'Compiling file: $*.pdf'
	@latex $*.tex
	@pdflatex $*.tex

################################################################################

clean:
	@rm -f *.aux
	@rm -f *.bbl
	@rm -f *.blg
	@rm -f *.log
	@rm -f *.out
	@rm -f *.run.xml
	@rm -f *.toc

cleanall: clean
	@rm -f *.dvi
	@rm -f *.pdf
