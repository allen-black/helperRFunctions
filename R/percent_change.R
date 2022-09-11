#' Percent Change
#'
#' This compares change between two values.
#' @param new The newer value being compared.
#' @param old The older value being compared.


percent_change <- function (old, new) {
  output <- ((new - old) / old)
  return(output)
}