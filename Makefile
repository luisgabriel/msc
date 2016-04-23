NAME=main

LATEX_FLAGS=-shell-escape

default: build

build:
	pdflatex $(LATEX_FLAGS) $(NAME).tex
	# remove duplicated \bibstyle in the last line
	cp main.aux main.aux.tmp
	head -n -1 main.aux.tmp > main.aux
	bibtex $(NAME)
	pdflatex $(LATEX_FLAGS) $(NAME).tex
	pdflatex $(LATEX_FLAGS) $(NAME).tex

clean:
	rm -f *.aux *.tmp *.bbl *.blg *.log *.toc *.out *.lof *.lot */*.aux
