# Track: R for Reproducible Science

**Audience:** researchers, analysts, and engineers who want to analyze data reproducibly in R.
**Prerequisites:** Foundations (shell + Git) recommended; no prior R required.
**Outcome:** import, wrangle, visualize, and report on data in R — reproducibly, with version
control, dependency pinning, tests, and Quarto reports.

This track is our modernized, production-grade take on the classic Software Carpentry
*R for Reproducible Scientific Analysis* lesson. The pedagogy (live coding, gapminder dataset,
demo → practice → debrief) is preserved; the **tooling is brought up to 2026**.

## What we modernized (vs. the original)

| Area | Original | ForgeLab (modernized) |
|------|----------|-----------------------|
| Reports | knitr / R Markdown | **Quarto** (`.qmd`) — same engine as this site |
| Pipe | magrittr `%>%` | native **`|>`** (R 4.1+); `%>%` noted for legacy code |
| Reshaping | `gather()` / `spread()` | **`pivot_longer()` / `pivot_wider()`** |
| Data import | `read.csv()` | **`readr::read_csv()`** (typed, faster, consistent) |
| Projects | manual `setwd()` | **`usethis`** projects + **`here::here()`** (no `setwd`) |
| Environments | none | **`renv`** lockfiles for reproducibility |
| IDE | RStudio | RStudio **and Positron** (Posit's next-gen IDE) |
| Quality | (implicit) | **`testthat`** tests, **`styler`/`lintr`**, Git + CI |

## Episodes

| # | Episode | Learner can… | File |
|---|---------|--------------|------|
| 1 | Introduction to R and the IDE | run R in RStudio/Positron; use it as a calculator; assign variables | `r-01-intro-r-rstudio.qmd` |
| 2 | Project Management & Reproducibility | structure a project with `usethis`, `here`, and `renv` | `r-02-project-management.qmd` |
| 3 | Seeking Help | use `?`, vignettes, and reprexes; evaluate AI help critically | `r-03-seeking-help.qmd` |
| 4 | Data Structures | use vectors, factors, lists; understand types and coercion | `r-04-data-structures.qmd` |
| 5 | Exploring Data Frames | import and inspect a tibble; understand structure | `r-05-exploring-data-frames.qmd` |
| 6 | Subsetting Data | subset vectors and data frames by index, name, and condition | `r-06-subsetting-data.qmd` |
| 7 | Control Flow | use `if`/`else`, `for`, and prefer vectorized/functional style | `r-07-control-flow.qmd` |
| 8 | Publication-Quality Graphics with ggplot2 | build layered, faceted, themed plots | `r-08-ggplot2.qmd` |
| 9 | Vectorization | replace loops with vectorized operations and `purrr::map` | `r-09-vectorization.qmd` |
| 10 | Functions Explained | write functions with defaults, return values, and documentation | `r-10-functions.qmd` |
| 11 | Reading & Writing Data | import/export with `readr`; tidy file/path practice | `r-11-reading-writing-data.qmd` |
| 12 | Data Manipulation with dplyr | filter, select, mutate, group, summarize with the pipe | `r-12-dplyr.qmd` |
| 13 | Reshaping Data with tidyr | pivot long/wide; tidy-data principles | `r-13-tidyr.qmd` |
| 14 | Producing Reports with Quarto | author reproducible reports mixing prose, code, and output | `r-14-quarto-reports.qmd` |
| 15 | Writing Good Software | functions, tests (`testthat`), style, `renv`, Git/CI | `r-15-writing-good-software.qmd` |

## Dataset

We use the **gapminder** dataset (country-level life expectancy, population, GDP per capita over
time) — available via the `gapminder` package or as a CSV — so skills are grounded in real,
interpretable data.

## Suggested workshop slices

- **"R in a Day":** Episodes 1, 4–6, 8, 12.
- **"Reproducible Analysis in R" (2 days):** Episodes 1–8, then 11–15.
- **"From Data to Report":** Episodes 5, 11–14.
