.PHONY: all html pdf clean
.DEFAULT: pdf

pdf: relatorio.pdf

html: relatorio.html

all: html pdf

relatorio.html: legenda.csv worms.csv relatorio.Rmd makehtml.R
	Rscript ./makehtml.R

relatorio.pdf: legenda.csv worms.csv relatorio.Rmd makepdf.R
	Rscript ./makepdf.R

Nadolny_etal_Worms_Brazil_DRYAD_9.xlsx: extract_worms_data.R
	Rscript ./extract_worms_data.R

legenda.csv: Nadolny_etal_Worms_Brazil_DRYAD_9.xlsx limpeza.R
	Rscript ./limpeza.R

worms.csv: Nadolny_etal_Worms_Brazil_DRYAD_9.xlsx limpeza.R
	Rscript ./limpeza.R

limpeza.R:

relatorio.Rmd:

extract_worms_data.R:

makehtml.R:

makepdf.R:

clean:
	-rm Nadolny_etal_Worms_Brazil_DRYAD_9.xlsx relatorio.html relatorio.pdf worms.csv legenda.csv
