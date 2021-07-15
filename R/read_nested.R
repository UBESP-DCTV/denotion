utils::globalVariables("where")

#' denotion's data
#'
#' Reads the Notion's `nested_data` from their source and pre-process
#' them.
#'
#' @param nested_path (chr) path to the original `nested_data.rds`
#'
#' @return a [tibble][tibble::tibble-package]
#'
#' @examples
#' \dontrun{
#'   read_nested()
#' }
read_nested <- function(
    nested_path = file.path(get_datapath(), "nested_data.rds")
  ) {
  readr::read_rds(nested_path) |>
    dplyr::ungroup()
}


#' denotion's beta
#'
#' Reads the Notion's `beta_data` from their source and pre-process
#' them.
#'
#' @param beta_path (chr) path to the original `beta_data.rds`
#'
#' @return a [tibble][tibble::tibble-package]
#'
#' @examples
#' \dontrun{
#'   read_beta(path)
#' }
read_beta <- function(
  beta_path = file.path(get_datapath(), "beta_data.rds")
) {
  readr::read_rds(beta_path) |>
    dplyr::mutate(dplyr::across(where(is.factor), as.character))
}
