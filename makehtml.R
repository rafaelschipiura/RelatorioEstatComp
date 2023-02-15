#!/usr/bin/Rscript

library("rmarkdown")

rmarkdown::render(input="relatorio.Rmd", output_format="html_document")
