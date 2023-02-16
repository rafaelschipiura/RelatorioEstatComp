.PHONY: all html pdf clean
.DEFAULT: pdf

pdf: relatorio.pdf

html: relatorio.html

all: html pdf

relatorio.html: legenda.csv worms.csv relatorio.Rmd
	Rscript ./makehtml.R

relatorio.pdf: legenda.csv worms.csv relatorio.Rmd
	Rscript ./makepdf.R

Nadolny_etal_Worms_Brazil_DRYAD_9.xlsx:
	Rscript ./extract_worms_data.R

legenda.csv: Nadolny_etal_Worms_Brazil_DRYAD_9.xlsx
	Rscript ./limpeza.R

worms.csv: Nadolny_etal_Worms_Brazil_DRYAD_9.xlsx
	Rscript ./limpeza.R

relatorio.Rmd:

clean:
	-rm Nadolny_etal_Worms_Brazil_DRYAD_9.xlsx relatorio.html relatorio.pdf worms.csv legenda.csv
