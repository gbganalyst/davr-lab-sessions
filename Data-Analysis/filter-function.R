telco_data_clean |> filter(gender == "Female", Churn == "Yes") |> write_csv("Female_customers_churning.csv")


telco_data_clean |> view()

telco_data_clean |> filter(TotalCharges > 70000000) |> view()
