# ForgeLab Carpentries — Reproducible Analysis in R

**Dates:** 2026-09-09 to 2026-09-10 · **Time:** 09:00–16:30 BST
**Format:** Hybrid (in-person + Online via Zoom)
**Track:** R for Reproducible Science

> For researchers and analysts who want to go from spreadsheets to a fully reproducible R
> workflow — importing, wrangling, visualizing, and reporting on data with version control,
> pinned dependencies, and Quarto.

---

## Quick links

- 🗒️ **Collaborative notes:** https://hackmd.io/@forgelab/2026-09-09-r
- 📋 **Pre-workshop survey:** https://forms.gle/forgelab-pre  (please complete *before* day 1)
- ✅ **Post-workshop survey:** https://forms.gle/forgelab-post  (shared at the end)
- 💬 **Chat / help channel:** https://discord.gg/forgelab
- 📚 **Lessons:** https://frankasantevanlaarhoven.github.io/ForgeLabCarpentries
- 🤝 **Code of Conduct:** ../../CODE_OF_CONDUCT.md

## Instructors & helpers

| Role | Name | Contact |
|------|------|---------|
| Lead instructor | Frank Asante Van Laarhoven | frankleroyvan@gmail.com |
| Co-instructor | *(to confirm)* | — |
| Helper | *(to confirm)* | — |
| CoC contact | Frank Asante Van Laarhoven | frankleroyvan@gmail.com |

*Never teach alone — we confirm a co-instructor + helper before this runs.*

## Prerequisites

- A laptop with admin rights (or use the cloud environment below).
- A free GitHub account: <https://github.com/join>.
- No prior R experience required. Comfort with a shell + Git (our
  [Foundations](../../curriculum/tracks/foundations.md) track) is helpful but not essential.

## Setup

Complete **before** 2026-09-09. Full guide: <https://frankasantevanlaarhoven.github.io/ForgeLabCarpentries/setup.html>.

Install **R** (<https://cloud.r-project.org/>) and an IDE — **RStudio**
(<https://posit.co/download/rstudio-desktop/>) or **Positron**
(<https://positron.posit.co/>). Then, from the R console:

```r
install.packages(c(
  "tidyverse",   # readr, dplyr, tidyr, ggplot2, purrr
  "here", "usethis", "renv",
  "testthat", "styler", "lintr",
  "gapminder"    # the dataset, also bundled at data/gapminder.csv
))
```

::: tip
**Cloud fallback:** the repository's one-click GitHub Codespace already includes Quarto and
Python; for this R workshop, install the R packages above inside the Codespace if you use it. The
[`gapminder.csv`](../../data/gapminder.csv) dataset ships in the repo, so you can code along
offline.
:::

Verify: in R, `library(tidyverse); nrow(readr::read_csv("data/gapminder.csv"))` should print `1704`.

## Schedule

> Rhythm: welcome + CoC → icebreaker → repeated (short demo → challenge → debrief) → frequent
> breaks → summary + feedback.

### Day 1 — Foundations of R & visualization

| Time | Topic |
|------|-------|
| 09:00 | Welcome, Code of Conduct, icebreaker |
| 09:20 | [R Ep 1 — Introduction to R and the IDE](https://frankasantevanlaarhoven.github.io/ForgeLabCarpentries/episodes/r-01-intro-r-rstudio.html) |
| 10:00 | [R Ep 2 — Project Management & Reproducibility](https://frankasantevanlaarhoven.github.io/ForgeLabCarpentries/episodes/r-02-project-management.html) |
| 10:30 | ☕ Break |
| 10:45 | [R Ep 3 — Seeking Help](https://frankasantevanlaarhoven.github.io/ForgeLabCarpentries/episodes/r-03-seeking-help.html) · [Ep 4 — Data Structures](https://frankasantevanlaarhoven.github.io/ForgeLabCarpentries/episodes/r-04-data-structures.html) |
| 12:00 | 🍽️ Lunch |
| 13:00 | [R Ep 5 — Exploring Data Frames](https://frankasantevanlaarhoven.github.io/ForgeLabCarpentries/episodes/r-05-exploring-data-frames.html) · [Ep 6 — Subsetting](https://frankasantevanlaarhoven.github.io/ForgeLabCarpentries/episodes/r-06-subsetting-data.html) |
| 14:30 | ☕ Break |
| 14:45 | [R Ep 7 — Control Flow](https://frankasantevanlaarhoven.github.io/ForgeLabCarpentries/episodes/r-07-control-flow.html) · [Ep 8 — ggplot2](https://frankasantevanlaarhoven.github.io/ForgeLabCarpentries/episodes/r-08-ggplot2.html) |
| 16:15 | Wrap-up, sticky-note feedback, next steps |
| 16:30 | End |

### Day 2 — Wrangling, reporting & good software

| Time | Topic |
|------|-------|
| 09:00 | Recap + questions |
| 09:20 | [R Ep 11 — Reading & Writing Data](https://frankasantevanlaarhoven.github.io/ForgeLabCarpentries/episodes/r-11-reading-writing-data.html) |
| 10:00 | [R Ep 12 — Data Manipulation with dplyr](https://frankasantevanlaarhoven.github.io/ForgeLabCarpentries/episodes/r-12-dplyr.html) |
| 10:30 | ☕ Break |
| 10:45 | [R Ep 13 — Reshaping with tidyr](https://frankasantevanlaarhoven.github.io/ForgeLabCarpentries/episodes/r-13-tidyr.html) |
| 12:00 | 🍽️ Lunch |
| 13:00 | [R Ep 14 — Producing Reports with Quarto](https://frankasantevanlaarhoven.github.io/ForgeLabCarpentries/episodes/r-14-quarto-reports.html) |
| 14:30 | ☕ Break |
| 14:45 | [R Ep 15 — Writing Good Software](https://frankasantevanlaarhoven.github.io/ForgeLabCarpentries/episodes/r-15-writing-good-software.html) (tests, renv, CI) |
| 16:00 | Post-survey, certificates, community invite |
| 16:30 | End |

*(Episodes 9–10, Vectorization & Functions, are covered inline as they arise and are available
for self-study.)*

## After the workshop

- Complete the post-survey (link above).
- Join the Discord community channel.
- Watch for the 3–6 month follow-up survey (we measure real-world impact).
- Explore **[Opportunities](https://frankasantevanlaarhoven.github.io/ForgeLabCarpentries/opportunities.html)** — turn your verified skills into real roles via the placements portal.
- Consider a [Capstone](../../curriculum/tracks/capstones-certification.md) — e.g. a reproducible
  analysis report — to earn a micro-credential, or
  [become a helper/instructor](../../instructors/).

## Code of Conduct

This workshop follows the ForgeLab [Code of Conduct](../../CODE_OF_CONDUCT.md). Report concerns
to Frank (CoC contact above) in person, by DM, or by email. Everyone is welcome here.
