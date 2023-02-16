.PHONY: all html pdf clean
.DEFAULT: html

html: relatorio.html

pdf: relatorio.pdf

all: html pdf

relatorio.html: legenda.csv worms.csv
	Rscript ./makehtml.R

relatorio.pdf: legenda.csv worms.csv
	Rscript ./makepdf.R

Nadolny_etal_Worms_Brazil_DRYAD_9.xlsx:
	Rscript ./extract_worms_data.R

legenda.csv: Nadolny_etal_Worms_Brazil_DRYAD_9.xlsx
	Rscript ./limpeza.R

worms.csv: Nadolny_etal_Worms_Brazil_DRYAD_9.xlsx
	Rscript ./limpeza.R

clean:
	-rm Nadolny_etal_Worms_Brazil_DRYAD_9.xlsx relatorio.html relatorio.pdf worms.csv legenda.csv
