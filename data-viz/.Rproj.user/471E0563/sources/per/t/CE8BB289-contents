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

plot(mtcars$disp, mtcars$mpg,
  main = "Engine Displacement vs. Miles per Gallon",
  xlab = "Displacement (cu.in.)",
  ylab = "Miles per Gallon",
  pch = 17, col = "darkblue"
)

plot(mpg ~ disp,
  data = mtcars,
  main = "Engine Displacement vs. Miles per Gallon",
  xlab = "Displacement (cu.in.)",
  ylab = "Miles per Gallon",
  pch = 17, col = "darkblue"
)

abline(lm(mpg ~ disp, data = mtcars), col = "blue", lwd = 2)

boxplot(heart$weight)

boxplot(heart$weight,
  main = "Distribution of Weight",
  ylab = "Weight (pounds)",
  col = "lightblue"
)

boxplot(weight ~ bp_status,
  data = heart,
  main = "Distribution of weight by blood pressure status",
  xlab = "Blood Pressure Status",
  ylab = "Weight (pounds)",
  col = c("red", "green", "yellow")
)

hist(diamonds$carat,
  breaks = 30, col = "lightblue",
  main = "Distribution of Diamond Carat Sizes",
  xlab = "Carat",
  ylab = "Frequency"
)

hist(diamonds$carat,
  breaks = seq(0, max(diamonds$carat) + 0.5, by = 0.5),
  col = "lightblue",
  xlab = "Carat Size",
  main = "Histogram with Custom Bin Width (0.5 Carats)"
)

barplot(table(mtcars$carb))

barplot(table(mtcars$carb),
  main = "Number of Cars by Carburetor Count",
  xlab = "Number of Carburetors",
  ylab = "Count",
  col = "skyblue"
)

counts <- table(mtcars$cyl, mtcars$vs)
barplot(counts,
  beside = TRUE,
  col = c("orange", "steelblue", "purple"),
  legend = rownames(counts),
  main = "Grouped Bar Chart by Cylinders and Engine Type",
  xlab = "Engine Type",
  ylab = "Count of Cars"
)

payments <- c(Check = 46.861, CreditCard = 36.681, Debit = 28.860, Digital = 18.9, Cash = 4.802)

num_vec <- c(46.861, 36.681, 28.860, 18.900, 4.802)

names(num_vec) <- c("Check", "CreditCard", "Debit", "Digital", "Cash")


payments


pie(payments, main = "Average Transactions by Payment Type", col = rainbow(5))

payments

pie_labels <- paste(names(payments), round(payments, 1), sep = ": ")

pie(payments, main = "Average Transaction by Payment Type", col = rainbow(length(payments)), labels = pie_labels)


plot(unemploy ~ date,
  data = economics, type = "l",
  main = "Umemployment Trends Over Time",
  xlab = "Year",
  ylab = "Unemployed",
  col = "blue", lwd = 2
)


plot(unemploy ~ date,
  data = economics, type = "l", main = "Unemployment Trends Over Time",
  xlab = "Year", col = "darkblue"
)

polygon(c(economics$date, rev(economics$date)),
  c(economics$unemploy, rep(0, length(economics$unemploy))),
  col = rgb(0.1, 0.1, 0.8, 0.3), border = NA
)

png(filename = "scatterplot.png", width = 800, height = 600)

plot(mpg ~ disp,
  data = mtcars,
  main = "Linear Regression of MPG on Displacement",
  xlab = "Displacement (cu.in.)",
  ylab = "Miles per Gallon",
  pch = 19
)

abline(lm(mpg ~ disp,
  data = mtcars
), col = "blue", lwd = 2)

dev.off()


pdf(file = "area.pdf")

plot(unemploy ~ date,
  data = economics, type = "l", main = "Unemployment Trends Over Time",
  xlab = "Year", col = "darkblue"
)

polygon(c(economics$date, rev(economics$date)),
  c(economics$unemploy, rep(0, length(economics$unemploy))),
  col = rgb(0.1, 0.1, 0.8, 0.3), border = NA
)

dev.off()
