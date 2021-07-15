#' denotion
#'
#' A [tibble][tibble::tibble-package] (enhanced `data.frame`) with the
#' nested raw kinetic signals taken for the Notion study.
#'
#' The data are presented nested by a time-frame of length \code{delta_s}
#' seconds, each of one has 5 observation (i.e., rows).
#'
#' For each combination of subject, meal and delta_s, all the
#' corresponding time-windows [tibble][tibble::tibble-package] of the
#' kinetic data are provided in the \code{nested_data} column
#'
#' @format A [tibble][tibble::tibble-package] with with 400 rows and 5
#'   columns:
#'
#' \describe{
#'   \item{arm}{study arm (a/b)}
#'   \item{subject}{subject id}
#'   \item{meal}{meal id}
#'   \item{nested_data}{a list=column containing in each element the
#'      list of all the [tibble][tibble::tibble-package] corresponding
#'      to the time-windows kinetic data and metadata}
#'   \item{delta_s}{length in seconds of the time-window}
#' }
#'
#' @source \url{L:/Notion/Analisi_statistiche/Dati_garmin}
"denotion"


#' denotion's windows' slopes.
#'
#' A [tibble][tibble::tibble-package] with the beta-slope coefficients
#' provided by a logistic model for the kinetic signals taken for the
#' [denotion] data set.
#'
#' @format A [tibble][tibble::tibble-package] with with 276,380 rows and
#'   15 columns. One row each time-windows, i.e. a contiguous set of
#'   continues physical measurement taken every 0.2 seconds for a
#'   \code{delta_s} seconds, for each meal of each subject of each arm.
#'
#' \describe{
#'   \item{arm}{study arm}
#'   \item{subject}{subject id}
#'   \item{meal}{meal id}
#'   \item{food}{food id}
#'   \item{delta_s}{length in seconds of the windows}
#'   \item{wrist}{left or right wrist}
#'   \item{acc_x}{beta-slope for the x axis acceleration}
#'   \item{acc_y}{beta-slope for the y axis acceleration}
#'   \item{acc_z}{beta-slope for the z axis acceleration}
#'   \item{pitch}{beta-slope for the pitch value expressed in rad}
#'   \item{roll}{beta-slope for the roll value expressed in rad}
#'   \item{power}{beta-slope for the power value expressed in Watt}
#'   \item{total_energy}{beta-slope for the gross energy (gravity
#'         included)
#'   }
#'   \item{dominant}{dominant wrist}
#'   \item{eating}{is the subject eating?}
#'   \item{starting_time}{the initial video_time of the window}
#' }
#'
#' @source \url{L:/Notion/Analisi_statistiche/Dati_garmin}
"denotion_beta"
