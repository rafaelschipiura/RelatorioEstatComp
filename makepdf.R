#!/usr/bin/Rscript

library("rmarkdown")

rmarkdown::render(input="relatorio.Rmd", output_format="pdf_document")
