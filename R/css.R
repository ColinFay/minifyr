#' Minify css
#'
#' Minify css files.
#'
#' @details
#'
#' Available minifiers are:
#'
#' + [clean-css](https://github.com/jakubpawlowicz/clean-css), with `minifyr_css_cleancss()`
#' + [crass](https://github.com/mattbasta/crass), with `minifyr_css_crass()`
#' + [cssnano](https://github.com/cssnano/cssnano), with `minifyr_css_cssnano()`
#' + [csso](https://github.com/css/csso), with `minifyr_css_csso()`
#' + [sqwish](https://github.com/ded/sqwish), with `minifyr_css_sqwish()`
#' + [yui](http://yui.github.io/yuicompressor/), with `minifyr_css_yui()`
#'
#' @param input File to minify
#' @param output Name of the output file
#'
#' @return The output path
#'
#' @export
#' @rdname css
minifyr_css_cleancss <- function(
  input,
  output
){
  minifyr_css_(input, output, "cleancss.js")
}

#' @export
#' @rdname css
minifyr_css_crass <- function(
  input,
  output
){
  minifyr_css_(input, output, "default.js", "crass")
}

#' @export
#' @rdname css
minifyr_css_cssnano <- function(
  input,
  output
){
  minifyr_css_(input, output, "default.js", "cssnano")
}

#' @export
#' @rdname css
minifyr_css_csso <- function(
  input,
  output
){
  minifyr_css_(input, output, "default.js", "csso")
}

#' @export
#' @rdname css
minifyr_css_sqwish <- function(
  input,
  output
){
  minifyr_css_(input, output, "sqwish.js")
}

#' @export
#' @rdname css
minifyr_css_yui <- function(
  input,
  output
){
  minifyr_css_(input, output, "yui.js")
}

minifyr_css_ <- function(
  input,
  output,
  script,
  module = NULL
){
  check_is_css(input)
  check_is_css(output)
  minifyr_c__(input, output, script, module)
}
