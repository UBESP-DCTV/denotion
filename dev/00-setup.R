base_packages <- c(
    "bookdown",   # has all *down/knitr packages as dependencies
    "devtools",   # package development tools
    "fs",         # file system manager
    "here",       # easily find your files :-)
    "lintr",      # static-code analyser
    "shiny",      # interactive interface
    "spelling",   # spellcheck
    "testthat",   # testing your function
    "tidyverse",  # tidy universe for data science
    "usethis"     # project development tools
)
renv::install(base_packages)


usethis::use_description()
usethis::use_proprietary_license("Corrado Lanera & UBEP")

usethis::use_tidy_github()

usethis::use_readme_rmd()
usethis::use_lifecycle_badge("Experimental")
usethis::use_cran_badge()

usethis::use_spell_check()
spelling::spell_check_package()
lintr::lint_package()

usethis::use_roxygen_md()
usethis::use_news_md()

usethis::use_testthat()

usethis::use_github_action(
    url = "https://raw.githubusercontent.com/CorradoLanera/actions/master/lint-renv.yaml"
)
usethis::use_github_actions_badge("lint")

usethis::use_github_action(
    url = "https://raw.githubusercontent.com/CorradoLanera/actions/master/R-CMD-check-renv.yaml"
)
usethis::use_github_actions_badge("R-CMD-check")

usethis::use_data_raw("dataset")

