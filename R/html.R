#' Minify HTML
#'
#' Minify HTML files.
#'
#' @details
#'
#' Available minifiers are:
#'
#' + [html-minifier](https://github.com/kangax/html-minifier), with `minifyr_html_minifier()`
#'
#' @param input File to minify
#' @param output Name of the output file
#'
#' @return The output path
#'
#' @export
#' @rdname html
minifyr_html_minifier <- function(
  input,
  output
){
  minifyr_html_(input, output, "htmlminifier.js")
}

minifyr_html_ <- function(
  input,
  output,
  script,
  module = NULL
){
  check_is_html(input)
  check_is_html(output)
  minifyr_c__(input, output, script, module)
}
