library(minifyr)
minifyr_npm_install(force = TRUE)

library(furrr)
library(future)
plan(multisession)

pkgs <- c("shiny", "dygraphs", "plotly", "shinyalert", "DT")
furrr::future_map(
  pkgs, ~ try({minify_package_js(.x, minifyr_js_uglify)})
)
furrr::future_map(
  pkgs, ~ try({minify_package_css(.x, minifyr_css_crass)})
)
