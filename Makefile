NAME=main

LATEX_FLAGS=-shell-escape

default: build

build:
	pdflatex $(LATEX_FLAGS) $(NAME).tex
	bibtex $(NAME)
	pdflatex $(LATEX_FLAGS) $(NAME).tex
	pdflatex $(LATEX_FLAGS) $(NAME).tex

clean:
	rm -f *.aux *.tmp *.bbl *.blg *.log *.toc *.out *.lof *.lot */*.aux
