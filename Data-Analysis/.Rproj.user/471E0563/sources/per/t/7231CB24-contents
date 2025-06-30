library(tidyverse)

anyNA(airquality)

sum(is.na(airquality))

count_missing_rows <- function(data) {
  sum(apply(data, MARGIN = 1, function(x) any(is.na(x))))
}

count_missing_rows(airquality)

inspect_missing_na_columns <- function(data) {
  colSums(is.na(data))
}


inspect_missing_na_columns(airquality)


tv_data <- read_csv("DAVR02-data/data-tv-company.csv")

glimpse(tv_data)


count_missing_rows(tv_data)

inspect_missing_na_columns(tv_data)
