TEX_FILES=\
	data.tex \
	fdm.tex \
	fdm_c172.tex \
	fdm_pw5.tex \
	fdm_uh60.tex \
	propellers.tex \
	rotor.tex \
	terrain.tex

BIBLIOGRAPHY=bibliography.bib

################################################################################

.SUFFIXES: .tex .aux
.SUFFIXES: .tex .bbl
.SUFFIXES: .tex .pdf
.SUFFIXES: .tex .temp

all: $(TEX_FILES:.tex=.aux) $(TEX_FILES:.tex=.bbl) $(TEX_FILES:.tex=.pdf)

.tex.aux: $(TEX_FILES)
	@echo "\e[1;32m"'Compiling file: $*.aux'"\e[0m"
	@latex $*.tex

.tex.bbl: $(TEX_FILES)
	@echo "\e[1;32m"'Compiling file: $*.bbl'"\e[0m"
	@cp ${BIBLIOGRAPHY} $*.bib
	@bibtex $*

# .tex.pdf: $(TEX_FILES)
# 	@echo "\e[1;32m"'Compiling file: $*.pdf'"\e[0m"
# 	@latex $*.tex
# 	@latex $*.tex
# 	@dvipdf $*.dvi

.tex.pdf: $(TEX_FILES)
	@echo "\e[1;32m"'Compiling file: $*.pdf'"\e[0m"
	@latex $*.tex
	@pdflatex $*.tex

################################################################################

clean:
	@rm -f *.aux
	@rm -f *.bbl
	@rm -f *.blg
	@rm -f *.log
	@rm -f *.out
	@rm -f *.ps
	@rm -f *.run.xml
	@rm -f *.toc
	@rm -f eps/*.pdf

cleanall: clean $(TEX_FILES:.tex=.temp)
	@rm -f *.bak
	@rm -f *.dvi
	@rm -f *.pdf
	@rm -f *.temp

.tex.temp: $(TEX_FILES)
	@echo "\e[1;33m"'Removing file: $*.bib'"\e[0m"
	@touch $*.temp
	@rm -f $*.bib
