library(tidyverse)
library(readxl)
library(inspectdf)
library(janitor)
library(bulkreadr)

mtcars |> glimpse()
?mtcars

mtcars <- mtcars |> mutate(across(c(carb, cyl, vs), as_factor))



iris <- iris |> clean_names()


diamonds <- read_excel_workbook("data/diamonds.xlsx", .id = "cut")

diamonds |> view()

diamonds |> glimpse()

diamonds <- diamonds |> mutate(across(c(cut, clarity), as_factor))

us_economics <- read_csv("data/us_economics.csv")

us_economics |> glimpse()

heart <- read_xlsx("data/heart.xlsx", sheet = 1)

heart <- heart |> clean_names()


ggplot(data = mtcars, aes(x = disp, y = mpg, colour = cyl)) +
  geom_point() +
  labs(
    x = "Displacement (cu.in.)",
    y = "Miles per Gallon",
    title = "Engine Displacement by Miles per Gallon",
    colour = "Cylinder"
  ) +
  geom_smooth(method = "lm") +
  theme_bw()



ggplot(data = mtcars, aes(x = disp, y = mpg)) +
  geom_point() +
  labs(
    x = "Displacement (cu.in.)",
    y = "Miles per Gallon",
    title = "Engine Displacement by Miles per Gallon",
  ) +
  geom_smooth(method = "lm", se = FALSE) +
  theme_bw()

heart |>
  ggplot(aes(x = weight)) +
  geom_boxplot(fill = "green", width = 0.3) +
  labs(
    title = "Distribution of Weight",
    x = NULL,
    y = "Weight (pounds)"
  ) +
  theme_minimal()

heart |> ggplot(aes(x = bp_status, y = weight, fill = bp_status)) +
  geom_violin(show.legend = FALSE) +
  labs(
    title = "Distribution of Weight by Blood Pressure Status",
    x = "Blood Pressure Status",
    y = "Weight (pounds)"
  ) +
  theme_bw()


diamonds |> ggplot(aes(x = carat)) +
  geom_histogram(
    binwidth = 0.1,
    fill = "lightblue"
  ) +
  labs(
    title = "Distribution of Diamond Carat Sizes",
    x = "Weight of the diamond",
    y = "Count"
  ) +
  theme_minimal()


diamonds |> ggplot(aes(x = price, colour = cut)) +
  geom_freqpoly(binwidth = 500) +
  labs(
    title = "Price Distribution by Diamond Cut",
    x = "Price (USD)",
    y = "Count",
    colour = "Diamond Cut"
  ) +
  theme_minimal()

mtcars |> ggplot(aes(x = carb, fill = carb)) +
  geom_bar(show.legend = FALSE) +
  labs(
    title = "Number of Cars by Carburetor Count",
    x = "Number of Carburetors",
    y = "Number of Cars"
  ) +
  theme_minimal()


mtcars |> ggplot(aes(x = cyl, fill = vs)) +
  geom_bar() +
  labs(
    title = "Engine Type Distribution by Cylinder Count",
    x = "Number of Cylinders",
    y = "Count of Cars",
    fill = "Engine Type"
  ) +
  scale_fill_discrete(labels = c("V-shaped", "Straight"))



mtcars |> ggplot(aes(x = cyl, fill = vs)) +
  geom_bar(position = position_dodge(preserve = "single")) +
  labs(
    title = "Engine Type Distribution by Cylinder Count (Clustered)",
    x = "Number of Cylinders",
    y = "Count of Cars",
    fill = "Engine Type"
  ) +
  scale_fill_discrete(labels = c("V-shaped", "Straight")) +
  theme_classic()


diamonds |>
  ggplot(aes(x = cut, y = carat, fill = cut)) +
  geom_col(show.legend = FALSE) +
  labs(
    x = "Quality of the Cut",
    y = "Total Carat Weight"
  ) +
  theme_bw()


diamonds_summary <- diamonds |>
  group_by(cut) |>
  summarise(mean_carat = mean(carat))



diamonds_summary


diamonds_summary |> ggplot(aes(x = cut, y = mean_carat, fill = cut)) +
  geom_col()



diamonds_summary |> ggplot(aes(x = cut, y = mean_carat, fill = cut)) +
  geom_bar(stat = "identity")

payment_data <- data.frame(
  payment_type = c("Check", "Credit Card", "Debit Card", "Digital Wallet", "Cash"),
  avg_transaction = c(46.861, 36.681, 28.860, 18.900, 4.802)
)

payment_data

payment_data |>
  ggplot(aes(x = reorder(payment_type, avg_transaction), y = avg_transaction, fill = payment_type)) +
  geom_col(show.legend = FALSE, width = 0.3) + # Remove legend
  geom_text(
    aes(label = avg_transaction), # Add bar labels
    vjust = -0.5, # Position labels above bars
    colour = "black"
  ) +
  labs(
    title = "Average Transaction Amount by Payment Type",
    x = "Payment Type",
    y = "Average Transaction Amount ($)"
  ) +
  theme_minimal()


us_economics |>
  ggplot(aes(x = date, y = unemploy)) +
  geom_line(color = "blue") +
  labs(
    title = "Unemployment Trends Over Time",
    x = "Date",
    y = "Number of Unemployed Individuals"
  ) +
  theme_bw()


range(us_economics$date)


us_economics |>
  ggplot(aes(x = date, y = unemploy)) +
  geom_area() +
  labs(
    title = "Unemployment Trends Over Time",
    x = "Date",
    y = "Number of Unemployed Individuals"
  ) +
  theme_bw()

us_economics |>
  ggplot(aes(x = date, y = unemploy)) +
  geom_area(fill = "lightblue", alpha = 0.3) +
  geom_line(colour = "darkblue", linewidth = 0.5) + # Adds a trend line
  theme_bw()


ggsave("dimonds-areaplot.png",
  width = 8, # Width in inches
  height = 6, # Height in inches
  units = "in", # Units for width and height (can be "in", "cm", or "mm")
  dpi = 300 # Resolution in dots per inch
)
