#' Percent Change
#'
#' This compares change between two values.
#' @param new The newer value being compared.
#' @param old The older value being compared.

percent_change <- function (new, old) {
  newValue <- as.numeric (new)
  oldValue <- as.numeric (old)
  output <- (newValue - oldValue) / old
  return(output)

}
