#' Get Distinct Field Session Counts
#'
#' This counts distinct sessionId values for any dimension in your query. You must have your sessions in a column named sessionId for this to work. The output will be the values, the counts, and then percentage.
#' @param data This is your full dataset that you are looking to compare.
#' @param field This is the column name that you are looking to get unique session counts for.


get_single_field_session_counts <- function (data, field) {
  sessionCount <- length(unique(data$sessionId))
  output <- fn$sqldf ("SELECT
                          $field as value,
                          count(distinct sessionId) as sessions
                        FROM
                          data
                        GROUP BY
                          $field
                    ")
  output <- output %>% mutate (percentage = sessions / sessionCount) %>% arrange (desc(sessions))
  return(output)
}