#!/usr/bin/Rscript

library("tidyverse")
library("readxl")

worms <- read_xlsx("./Nadolny_etal_Worms_Brazil_DRYAD_9.xlsx", sheet = "Data base")

worms %>%
select((!matches("^Source"))&(!matches("^Ref"))) %>%
select(c("Season" , "County", "State", "Mean annual precipitation                  (mm)", "Annual mean temperature         (°C)","Köppen climate","Biome","Soil class (Brazilian classification)","FAO soil classification","Total density (indiv. m-2)","pH","H+Al       (cmolc dm-3)","K                      (cmolc dm-3)","Ca                 (cmolc dm-3)","Mg                (cmolc dm-3)","P                     (mg dm-3)","C (g dm-3)","N                       (g dm-3)","Texture")) %>%
rename(	"estacao" = "Season",
	"municipio" = "County",
	"estado" = "State",
	"precipitacao" = "Mean annual precipitation                  (mm)",
	"temperatura" = "Annual mean temperature         (°C)",
	"clima" = "Köppen climate",
	"bioma" = "Biome",
	"solo_bras" = "Soil class (Brazilian classification)",
	"solo_fao" = "FAO soil classification",
	"densidade" = "Total density (indiv. m-2)",
	"Al" = "H+Al       (cmolc dm-3)",
	"K" = "K                      (cmolc dm-3)",
	"Ca" = "Ca                 (cmolc dm-3)",
	"Mg" = "Mg                (cmolc dm-3)",
	"P" = "P                     (mg dm-3)",
	"C" = "C (g dm-3)",
	"N" = "N                       (g dm-3)",
	"textura" = "Texture")
