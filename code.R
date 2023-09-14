# library(plyr)
# library(dplyr) # Pour le %>% etc
# library(purrr)
# library(stringi)
# #library(sf)
# library(leaflet)
# library(leaflet.extras)
# library(shiny)
# library(readxl)
# library(stringdist)
# library(shinyjs, quietly = T)
# library(fuzzyjoin)
# library(stringr)

# ATTENTION : install.packages marche pas online !!
# # Declare packages
packages <- c("dplyr","purrr","stringi", "leaflet", "leaflet.extras", "shiny", "shinyjs", "readxl", "stringdist", "fuzzyjoin", "stringr", "DT") # , "ggExtra"

# Loop through each package
for (package in packages) {

  # Install package
  # Note: `installed.packages()` returns a vector of all the installed packages
  if (!package %in% installed.packages()) {
    # Install it
    install.packages(
      package,
      dependencies = TRUE, repos = "http://cran.us.r-project.org"
    )
  }
  # Load package
  # Note: `.packages()` returns a vector of all the loaded packages
  if (!package %in% .packages()) {
    # Load it
    library( package, character.only = TRUE, quietly = T  )
  }
}
# ASK FOR CODE ! (see readme)