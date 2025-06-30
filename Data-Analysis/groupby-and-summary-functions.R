telco_data_clean |> group_by(gender) |> summarise(average_monthly = mean(MonthlyCharges, na.rm = TRUE))


telco_data_clean |> group_by(gender, Churn) |> summarise(average_monthly = mean(MonthlyCharges, na.rm = TRUE))


