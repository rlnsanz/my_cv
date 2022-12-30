PAPER=main.tex
SHELL=/bin/zsh

all:
	latexmk -f -pdf -outdir=build -pdflatex="pdflatex -interaction=nonstopmode" -use-make main.tex

watch:
	latexmk -f -pvc -view=none -pdf -outdir=build -pdflatex="pdflatex -interaction=nonstopmode -synctex=1 -output-directory=build" -use-make main.tex

legacy:
	latexmk -pdf -pdflatex="pdflatex -interaction=nonstopmode" -f -use-make main.tex

clean:
	rm -f *.aux || true
	rm -f *.pdf || true
	rm -f *.blg || true
	rm -f *.bbl || true
	rm -f *.dvi || true
	rm -f *.log || true
	rm -f *.fdb_latexmk || true
	rm -rf _minted-main || true
	rm -f *.fls || true


