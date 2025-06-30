library(tidyverse)

sales_figure <- c(20, 30, 10, 40, 35, 60, 25, 40, 45, 34, 54, 22)

length(sales_figure)

sales_figure %>% mean() %>% round(2)

round(mean(sales_figure), 2)

sales_figure |> mean() |> round(2)


airquality |> glimpse()

glimpse(airquality)


iris |> names()

iris |> summary()
