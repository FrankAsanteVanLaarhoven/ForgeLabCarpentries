# Data

Datasets used by the lessons. Treat everything here as **read-only inputs** — generated
outputs belong in `output/` (see the [Project Management episode](../lessons/episodes/r-02-project-management.qmd)).

## `gapminder.csv`

Country-level indicators over time, used throughout the
[R for Reproducible Science](../curriculum/tracks/r-reproducible-science.md) track.

- **Rows:** 1704 · **Countries:** 142 · **Continents:** 5 (Africa, Americas, Asia, Europe, Oceania)
- **Years:** 1952–2007, every 5 years (12 time points)

| Column | Type | Meaning |
|--------|------|---------|
| `country` | character | Country name |
| `year` | integer | Year of observation |
| `pop` | numeric | Population |
| `continent` | character | Continent |
| `lifeExp` | numeric | Life expectancy at birth (years) |
| `gdpPercap` | numeric | GDP per capita (international dollars) |

### Load it

```r
library(readr)
library(here)
gapminder <- read_csv(here("data", "gapminder.csv"))
```

The same data is also available via the `gapminder` R package
(`install.packages("gapminder"); gapminder::gapminder`).

### Provenance & license

The gapminder dataset is derived from the [Gapminder Foundation](https://www.gapminder.org/)
and distributed via the `gapminder` R package (collated by Jenny Bryan). The data is excerpted
for teaching under **CC-BY**. Cite Gapminder when reusing. This file mirrors the copy used by the
Software Carpentry *R Novice Gapminder* lesson so examples match published Carpentries material.
