names(telco_data)


telco_data |> view()

telco_data <- telco_data |> mutate(SeniorCitizen = ifelse(SeniorCitizen == 1, "Yes", "No"), MonthlyCharges = MonthlyCharges * 1500, TotalCharges = TotalCharges * 1500)


telco_data_clean <- telco_data |> mutate(across(is.character, as.factor))

telco_data_clean <- telco_data_clean |> mutate(customerID = as.character(customerID))


glimpse(telco_data_clean)
