# Thesis build. Requires the project-local TeX Live on PATH
# (mise does this automatically; otherwise: source ./activate.sh)

MAIN := main
OUT  := build

.PHONY: all pdf watch clean distclean open wordcount

all: pdf

pdf:
	latexmk -pdf -interaction=nonstopmode -file-line-error $(MAIN).tex

watch:
	latexmk -pdf -pvc -interaction=nonstopmode $(MAIN).tex

open: pdf
	xdg-open $(OUT)/$(MAIN).pdf

clean:
	latexmk -c $(MAIN).tex

distclean:
	latexmk -C $(MAIN).tex
	rm -rf $(OUT)

wordcount:
	texcount -inc -sum -q $(MAIN).tex
