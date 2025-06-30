install.load::install_load(c("tidyverse", "readxl", "janitor", "readxl", "writexl", "haven", "bulkreadr"))

life_expectancy <- read_csv("DAVR02-data/africa-life-expectancy.csv")

life_expectancy

write_csv(life_expectancy, "processed_life_expectancy_data.csv")

glimpse(life_expectancy)

names(life_expectancy)

dim(life_expectancy)

life_expectancy <- clean_names(life_expectancy)

head(life_expectancy)

tail(life_expectancy)

max(life_expectancy$life_expectancy_in_years_2023)


diamonds <- read_xlsx("DAVR02-data/diamonds.xlsx", sheet = 1)

head(diamonds)

glimpse(diamonds)

excel_sheets("DAVR02-data/diamonds.xlsx")


diamonds_VG <- read_xlsx("DAVR02-data/diamonds.xlsx", sheet = "Very Good")


write_xlsx(diamonds_VG, "diamonds-Very-Good.xlsx")

automobile_data <- read_dta("DAVR02-data/automobile.dta")

View(automobile_data)
glimpse(automobile_data)

wages_data <- read_sav("DAVR02-data/wages.sav")


unemployed_data <- read_dta("DAVR02-data/unemployed_youth.dta")

write_sav(wages_data, "processed_wages_data.sav")

write_dta(automobile_data, "automobile_data_R.dta")
