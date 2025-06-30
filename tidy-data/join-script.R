# install.packages("nyscflights13")

library(nycflights13)
library(tidyverse)

flights |> glimpse()

airlines |> glimpse()

airports |> glimpse()

planes |> glimpse()

weather |> glimpse()

flights2 <- flights |> select(year, time_hour, origin, dest, tailnum, carrier)

result1 <- flights |> left_join(airlines, by = "carrier")


weather <- weather |> select(origin, time_hour, temp, wind_speed)



result2 <- flights2 |> left_join(weather, by = c("time_hour", "origin"))

result3 <- flights2 |> left_join(planes |> select(tailnum, type, engine, seats), by = "tailnum")
