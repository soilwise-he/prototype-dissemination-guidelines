# SoilWise Dissemination Guidelines

A [Bookdown](https://bookdown.org/) documentation site for the SoilWise Dissemination Guidelines and User Manual (Deliverable D4.6).

The published site is available at: **https://soilwise-he.github.io/prototype-dissemination-guidelines/**

---

## Repository structure

| File / folder | Purpose |
|---|---|
| `index.Rmd` | Preface / home page (Bookdown entry point) |
| `01-intro.Rmd` | Chapter 1 — Introduction |
| `02-catalogue.Rmd` | Chapter 2 — The SoilWise Catalogue |
| `03-components.Rmd` | Chapter 3 — Platform Components |
| `references.Rmd` | Bibliography |
| `_bookdown.yml` | Bookdown configuration (chapter order, output directory) |
| `_output.yml` | Output format configuration (GitBook) |
| `book.bib` | BibTeX bibliography |
| `style.css` | Custom CSS for the GitBook theme |
| `docs/` | Built site (generated; committed for GitHub Pages) |
| `.github/workflows/bookdown.yml` | GitHub Actions workflow for automated build and deploy |

---

## Building the site locally

### Prerequisites

- [R](https://www.r-project.org/) >= 4.2
- [Pandoc](https://pandoc.org/) (bundled with [RStudio](https://posit.co/download/rstudio-desktop/))
- The following R packages:

```r
install.packages(c("bookdown", "knitr", "rmarkdown"))
```

### Build

Open R (or RStudio) in the repository root and run:

```r
bookdown::render_book("index.Rmd", "bookdown::gitbook")
```

The built site is placed in the `docs/` folder. Open `docs/index.html` in your browser to preview it.

---

## Publishing to GitHub Pages

Publishing is automated via GitHub Actions (see `.github/workflows/bookdown.yml`).

Every push to the `main` branch triggers:
1. Build of the Bookdown site.
2. Deployment to GitHub Pages from the `docs/` artifact.

### First-time setup

1. Go to **Settings > Pages** in this repository.
2. Under **Source**, select **GitHub Actions**.
3. Push to `main` — the workflow will build and deploy the site automatically.

### Manual publish (without GitHub Actions)

Build the site locally (see above), commit the `docs/` folder, and push:

```bash
git add docs/
git commit -m "Rebuild site"
git push
```

Then configure GitHub Pages to serve from the `docs/` folder of the `main` branch under **Settings > Pages**.

---

## Contributing

Source files are `.Rmd` files in the repository root. Edit them and rebuild the site using the instructions above.

This project has received funding from the Horizon Europe research and innovation programme under Grant Agreement No 101112838.
