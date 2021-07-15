## code to prepare `dataset` dataset goes here

devtools::load_all()

denotion <- read_nested()
denotion_beta <- read_beta()

usethis::use_data(denotion, denotion_beta,
                  overwrite = TRUE,
                  compress = "xz")
