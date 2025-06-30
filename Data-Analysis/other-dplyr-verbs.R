library(janitor)
telco_data_clean |> count(Churn)

telco_data_clean |> count(SeniorCitizen)



telco_data_clean |> rename(military_personnel = SeniorCitizen)


telco_data_clean |> distinct()

telco_data_clean |> get_dupes()
