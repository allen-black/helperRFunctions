# helperRFunctions
 These are helpful R functions for daily workflow.

## Getting Started
To get started, ensure you've installed the latest version of this package with `devtools::install_github("allen-black/helperRFunctions")`

Then make sure you add the library for access to the functions. That can be done with `library(helperRFunctions)`

## Functions added
Each function has a helper file that can be found by typing `?` and then the name of the function below.

### get_single_field_session_counts
This will return the values in a particular table column with the distinct counts of a `sessionId` field. It will also then calculate the percentage of each of those. Make sure you have the column name of `sessionId`. `data` is the full data table. and `field` is the field to get the distinct values of. **`get_single_field_session_counts (data, field)`**

### percent_change
This is a quick function to get percent change values. **`percent_change(new, old)`**

