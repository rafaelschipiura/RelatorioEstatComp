library("XML")
library("tidyverse")

extract_data <-  function() {
  data_dryad_url <- "https://datadryad.org/stash/dataset/doi:10.5061%2Fdryad.4md0s64"
  data_dryad_html <- rvest::read_html(data_dryad_url)
  
  data_worms_url <- paste0("https://datadryad.org", html_text(html_nodes(data_dryad_html, xpath="//a[@title='Nadolny_etal_Worms_Brazil_DRYAD_9.xlsx']/@href")))
  
  tmp = tempfile(fileext = ".xlsx")
  download.file(url = data_worms_url, destfile = tmp, mode="wb")
  return(tmp)
}
