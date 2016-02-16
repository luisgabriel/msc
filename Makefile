NAME=risethesis

default: build

build:
	pdflatex $(NAME).tex
	bibtex $(NAME)
	pdflatex $(NAME).tex
	pdflatex $(NAME).tex

clean:
	rm -f *.aux *.bbl *.blg *.log *.toc *.out *.lof *.lot
