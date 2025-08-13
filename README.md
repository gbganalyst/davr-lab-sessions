# DAVR Lab Sessions

Materials that accompany the **Data Analysis with R** video series.  Each folder is a self-contained lab with Quarto documents, sample data, and code you can run locally.

## Folder map

| Folder            | What you will practise                                                                 |
|-------------------|----------------------------------------------------------------------------------------|
| Data-Analysis      | End-to-end exploratory workflows: importing, wrangling, and quick summaries           |
| data-viz           | Grammar-of-graphics plots with `ggplot2`, plus polish tips (themes, labels, patchwork) |
| intro-to-quarto    | The minimum you need to start authoring with Quarto, including HTML and PDF output    |
| reproducible-r-viz | Re-creating published figures in a fully reproducible way                             |
| tidy-data          | Core `tidyverse` verbs for reshaping and joining data                               |
| ezekiel-website    | Create your personal Data Science portfolio site using Quarto (R or Python) and publish it online |



## Quick start

1. **Clone the repo**

   ```bash
   git clone https://github.com/gbganalyst/davr-lab-sessions.git
   cd davr-lab-sessions
   ```

2. **Install prerequisites**

   | Tool       | Why you need it                     | Install hint                                                               |
   | ---------- | ----------------------------------- | -------------------------------------------------------------------------- |
   | R ≥ 4.0    | Runs the lab code                   | [https://cran.r-project.org](https://cran.r-project.org)                   |
   | Quarto CLI | Renders the `.qmd` notebooks        | [https://quarto.org/docs/get-started](https://quarto.org/docs/get-started) |
   | R packages | tidyverse, janitor, patchwork, etc. | Install the required packages in each RStudio project lab, or use the script in the root of the repository|


## Contributing

Pull requests that fix typos, improve explanations, or add small, well-documented examples are welcome. To propose larger changes, open an issue first so we can discuss scope.

1. Fork the repo and create a feature branch.
2. Commit with clear messages (imperative mood).
3. Open a PR against `main`; GitHub Actions will run `quarto check` to ensure the site builds.


## License

Unless stated otherwise in a sub-folder, all code is released under the MIT License and the written content under CC BY 4.0.


## Acknowledgments

Big thanks to the R community for feedback during recording and to every learner who spots and reports an error. Your suggestions keep the labs improving.
