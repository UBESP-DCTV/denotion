base_packages <- c(
    "bookdown",   # has all *down/knitr packages as dependencies
    "devtools",   # package development tools
    "fs",         # file system manager
    "here",       # easily find your files :-)
    "lintr",      # static-code analyser
    "shiny",      # interactive interface
    "spelling",   # spellcheck
    "targets",     # reproducible R make-like environment
    "testthat",   # testing your function
    "tidyverse",  # tidy universe for data science
    "usethis"     # project development tools
)
renv::install(base_packages)
