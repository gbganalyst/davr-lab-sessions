library(tidyverse)
library(janitor)
library(inspectdf)

# TV Data
tv_data <- read_csv("DAVR02-data/data-tv-company.csv")
glimpse(tv_data)

tv_data_1 <- tv_data


tv_data_2 <- tv_data_1 |> na.omit()

dim(tv_data)
dim(tv_data_2)

# Recognise missing data

anyNA(tv_data)

complete.cases(tv_data)

is.na(tv_data)


# summarising missing data

sum(is.na(tv_data))

inspect_na(tv_data) |> show_plot()


# Replace Missing Values with default values

tv_data %>%
  replace_na(list(library = 99, regard = 5, views = 480))

# Impute Missing Values

tv_data %>%
  mutate(
    library = coalesce(library, mean(library, na.rm = TRUE)),
    regard = coalesce(regard, mean(regard, na.rm = TRUE)),
    views = coalesce(views, mean(views, na.rm = TRUE))
  )



library(bulkreadr)

fill_missing_values(tv_data,
  selected_variables = c("library", "regard", "views"), method = "mean"
)


tv_data |> fill_missing_values(method = "mean")


# Heart disease Data

heart_disease <- read_csv("DAVR02-data/cleveland-heart-disease-database.csv", na = "?")

heart_disease_1 <- heart_disease

anyNA(heart_disease)

complete.cases(heart_disease)

sum(is.na(heart_disease))

inspect_na(heart_disease) |> show_plot()

na.omit(heart_disease)
