TARGET = firstdraft

DEPS = biblio.bib

all: draft
	
draft: $(DEPS)
	pdflatex -interaction=nonstopmode  $(TARGET)
	#bibtex $(TARGET)
	pdflatex -interaction=nonstopmode  $(TARGET)
	pdflatex -interaction=nonstopmode  $(TARGET)

clean:
	/usr/bin/env rm -f *.dvi *.log *.aux *.bbl *.blg *.toc *.bak *.out *~ $(TARGET)Notes.bib

