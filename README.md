<!-- badges: start -->

[![CRAN
status](https://www.r-pkg.org/badges/version/r2rtf)](https://CRAN.R-project.org/package=r2rtf)
[![Codecov test
coverage](https://codecov.io/gh/Merck/r2rtf/branch/master/graph/badge.svg)](https://codecov.io/gh/Merck/r2rtf?branch=master)
[![R build
status](https://github.com/Merck/r2rtf/workflows/R-CMD-check/badge.svg)](https://github.com/Merck/r2rtf/actions)
[![CRAN
Downloads](https://cranlogs.r-pkg.org/badges/r2rtf)](https://cran.r-project.org/package=r2rtf)
<!-- badges: end -->

Overview
========

Create RTF table and figure with flexible format.

-   [Website](https://merck.github.io/r2rtf/index.html)
-   [Overview
    Paper](https://www.pharmasug.org/proceedings/2020/DV/PharmaSUG-2020-DV-198.pdf)

Installation
------------

1.  Download the package in this code repository.
2.  Unzip the file.
3.  Open the \*.Rproj file by Rstudio.
4.  In Rstudio console, run `devtools::install()`.

Highlighted Features
--------------------

The R package r2rtf provided flexibility to provide features below:

-   Necessary options to create highly customized RTF table and figure.
-   Simple to use parameters and data structure.
    -   Customized column header: split by “|”.
    -   Three required parameters for the output tables (data, filename,
        column relative width).
    -   Flexible and detail control of table structure.
-   Format control in cell, row, column and table level for:
    -   Border Type: single, double, dash, dot, etc.
    -   Alignment: left, right, center, decimal.
    -   Column width.
    -   Text appearance: **bold**, *italics*, <s>strikethrough</s>,
        underline and any combinations.
    -   Font size.
    -   Text and border color (657 different colors named in `color()`
        function).
    -   Special characters: any character in UTF-8 encoding (e.g. Greek,
        Symbol, Chinese, Japanese, Korean).
-   Append several tables into one file.
-   Pagination.
-   Built in raw data for validation.
