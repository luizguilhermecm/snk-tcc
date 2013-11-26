FILE = tcc

.PHONY: $(FILE).pdf

$(FILE).pdf: $(FILE).tex
	pdflatex $(FILE).tex

run:
	pdflatex $(FILE).tex
	open $(FILE).pdf
	$(RM) *.aux
	$(RM) *.aux~
	$(RM) *.toc
	$(RM) *.out
	$(RM) *.lot
	$(RM) *.log
	$(RM) *.lof
	$(RM) *.bbl
	$(RM) *.blg
	$(RM) *.idx
	
bib:
	$(MAKE)
	bibtex $(FILE)
	$(MAKE)
	$(MAKE)
	open $(FILE).pdf
	$(RM) *.aux
	$(RM) *.aux~
	$(RM) *.toc
	$(RM) *.out
	$(RM) *.lot
	$(RM) *.log
	$(RM) *.lof
	$(RM) *.bbl
	$(RM) *.blg
	$(RM) *.idx
	

open:
	open $(FILE).pdf

clean:
	$(RM) $(FILE).pdf
	$(RM) *.aux
	$(RM) *.aux~
	$(RM) *.toc
	$(RM) *.out
	$(RM) *.lot
	$(RM) *.log
	$(RM) *.lof
	$(RM) *.bbl
	$(RM) *.blg
	$(RM) *.idx
