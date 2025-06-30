library(tidyverse)
library(janitor)

telco_data <- read_csv("DAVR02-data/telco-customer-churn.csv")

glimpse(telco_data)

telco_data |> select(customerID, gender, Partner, Churn) |> view()


telco_data |> select(1, 4, 5, 11)

telco_data |> select(starts_with("s"))

telco_data |> select(ends_with("ing"))

telco_data |> select(contains("a")) |> view()

