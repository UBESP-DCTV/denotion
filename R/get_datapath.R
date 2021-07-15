#' get_datapath
#'
#' Retrieve the path of the data folder stored in an environmental
#' variable.
#'
#' @param envvar_datapath (chr) The name of the environmental variable
#'   in which the path to the data folder is stored
#'
#' @importFrom usethis ui_stop ui_field ui_value ui_code
#'
#' @return (chr) The data path stored in the `envvar_datapath`
#'   environmental variable
#'
#' @examples
#' get_datapath()
get_datapath <- function(envvar_datapath = "DATAPATH") {

  data_path <- Sys.getenv(envvar_datapath)

  if (data_path == "") {
    ui_stop(unprovided_envvar_datafolder_error_message())
  }

  if (!fs::dir_exists(data_path)) {
    ui_stop(empty_datafolder_error_message())
  }


  data_path

}

unprovided_envvar_datafolder_error_message <- function() {
  paste0(
    "

    The environmental variable {ui_field(envvar_datapath)} is empty.
    It must containing the path to data.
    You can set an environmental variable in a project-level ",
    "{ui_value('.Renviron')} file.
    To create/open it you can call ",
    "{ui_code('usethis::edit_r_environ(\"project\")')}.
    Note:
      it could be in a ",
      "{ui_value('notion/big_data_not_to_package_nor_git')} folder."
  )
}

empty_datafolder_error_message <- function() {
  paste0(
    "

    Directory {ui_value(data_path)} pointed by the environmental ",
      "variable {ui_field(envvar_datapath)} does not exists.
    It must exist (and contain both the {ui_value('beta_data.rda')} ",
      "and {ui_value('nested_data.rda')}).
    Please change it accordingly in the project's ",
    "{ui_value('.Renviron')}.
    You can access it calling ",
    "{ui_code('usethis::edit_r_environ(\"project\")')}."
  )
}
