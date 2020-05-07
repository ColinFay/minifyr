
<!-- README.md is generated from README.Rmd. Please edit that file -->

# minifyr

<!-- badges: start -->

<!-- badges: end -->

The goal of minifyr is to provide a wrapper around a NodeJS module,
`node-minify` and `clean-css`
<https://github.com/jakubpawlowicz/clean-css>

## Installation

You can install the released version of `{minifyr}` with:

``` r
remotes::install_github("colinfay/minifyr")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(minifyr)
minifyr_npm_install(TRUE)
minifyr_run("test.css", "test2.css")
```
