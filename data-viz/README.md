# Data Visualisation Project

This project demonstrates how to create clear, informative plots using both **ggplot2** and base R graphics. You’ll find scripts that load and clean data, generate visualisations, and export them as images and a PDF.

## Project Structure

```

data-viz/
├── .Rproj.user/                    # RStudio project files (do not edit)
├── data/                           # Raw and cleaned data files
│   └── …
├── data-viz.Rproj                  # RStudio project descriptor
├── data-viz-project-script-1.R     # ggplot2 script
├── data-viz-project-script-2.R     # Base-R script
├── dimonds-areaplot.png            # Example ggplot2 output
├── scatterplot.png                 # Example base-R output
└── area.pdf                        # High-resolution ggplot2 area plot

````

## Prerequisites

- **R** (version 4.0.0 or above)  
- **RStudio** (recommended)  
- R packages:  
  - `tidyverse`  
  - `inspectdf`  
  - `janitor`  
  - `bulkreadr` 
  
You can install the required packages with:

```r
install.packages(c("tidyverse", "inspectdf", "janitor", "bulkreadr"))
````

## Getting Started

1. **Clone the repository**

   ```bash
   git clone https://github.com/your-username/data-viz.git
   cd data-viz
   ```

2. **Open the project**
   Double-click `data-viz.Rproj` in RStudio to load the project environment.

3. **Run the scripts**
  Run each script line by line


## Script Descriptions

- **data-viz-project-script-1.R**

  * Loads and cleans the data
  * Uses **ggplot2** to build a layered area chart
  * Exports the result to `dimonds-areaplot.png` and `area.pdf`


- **data-viz-project-script-2.R**

  * Prepares the data for the base graphics
  * Uses base R plotting syntax to build chart
  * Saves the figure as scatterplot.png

## Results

- **scatterplot.png** — a quick exploratory scatter plot
- **dimonds-areaplot.png** — a polished ggplot2 area chart
- **area.pdf** — publication-quality version of the area chart

## Data

Place any raw data files (for example `diamonds.csv`) in the `data/` folder. The scripts assume that files in `data/` are ready to be read with `readr::read_csv()`.

## Contributing

Contributions are welcome. Please open an issue or submit a pull request with improvements or bug fixes.

## Licence

This project is released under the MIT Licence.

