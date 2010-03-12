PDFLATEX=pdflatex
PDFLATEX_FLAGS=-output-directory tmp


.PHONY: all clean

all: attachment mindsight_seminar experiences_presentation

tmp:
	mkdir $@

attachment: tmp
	$(PDFLATEX) $(PDFLATEX_FLAGS) $@.latex
	mv tmp/$@.pdf .

mindsight_seminar: tmp
	$(PDFLATEX) $(PDFLATEX_FLAGS) $@.latex
	mv tmp/$@.pdf .
	
experiences_presentation: tmp
	$(PDFLATEX) $(PDFLATEX_FLAGS) $@.latex
	mv tmp/$@.pdf .

clean:
	rm -f *.aux *.log *.blg *.toc *.out *.lot tex4ht.ps *.4*
	rm -f *.xref* *.lg *.idv *.out *.otc *.tmp tmp.*
	rm -f *.sync*.gz
	rm -rf tmp
