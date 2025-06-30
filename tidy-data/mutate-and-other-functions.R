library(tidyverse)
?msleep

msleep |> glimpse()

msleep |>
  select(name, contains("sleep")) |>
  mutate(across(c(sleep_total, sleep_rem, sleep_cycle), ~ .x * 60))

msleep_new <- msleep |>
  select(name, contains("sleep")) |>
  mutate(across(contains("sleep"), ~ .x * 60))


msleep_cat <- msleep |>
  select(name, sleep_total, bodywt) |>
  mutate(sleep_category = case_when(
    bodywt > 50 ~ "heavy",
    bodywt > 10 ~ "medium",
    .default = "light"
  ))


msleep_cat |> view()
