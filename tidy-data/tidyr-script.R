library(tidyverse)

table1

table2

table3

table4a

table4b

table5

table1

tidy_table2 <- table2 |> pivot_wider(names_from = "type", values_from = "count")


tidy_table4a <- table4a |> pivot_longer(cols = c(`1999`, `2000`), names_to = "year", values_to = "cases")

tidy_table4b <- table4b |> pivot_longer(cols = c(`1999`, `2000`), names_to = "year", values_to = "population")

tidy_table3 <- table3 |>
  separate(col = rate, into = c("cases", "population"), sep = "/", convert = TRUE) |>
  mutate(rate = cases / population) |>
  select(-c(cases, population))


tidy_table5 <- table5 |>
  unite(col = "full_year", century, year, sep = "") |>
  separate(col = "rate", into = c("cases", "population"), sep = "/", convert = TRUE) |>
  mutate(rate = cases / population) |>
  select(-c(3, 4)) |>
  rename(year = full_year)
