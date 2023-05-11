#' Minify JS Files
#'
#' Minify javaScript files.
#'
#' @details
#'
#' Available minifiers are:
#'
#' + [babel-minify](https://github.com/babel/minify), with `minifyr_js_babel()`
#' + [Google Closure Compiler](https://developers.google.com/closure/compiler/), with `minifyr_js_gcc()`
#' + [terser](https://github.com/terser-js/terser), with `minifyr_js_terser()`
#' + [uglify-es](https://github.com/mishoo/UglifyJS/tree/harmony), with `minifyr_js_uglify()`
#' + [YUI Compressor](http://yui.github.io/yuicompressor/), with `minifyr_js_yui()`
#'
#' @param input File to minify
#' @param output Name of the output file
#'
#' @return The output path
#'
#' @export
#' @rdname js
minifyr_js_babel <- function(
  input,
  output
    ) {
  minifyr_js_(input, output, "babelminify.js")
}

#' @export
#' @rdname js
minifyr_js_gcc <- function(
  input,
  output
    ) {
  minifyr_js_(input, output, "gcc.js")
}

#' @export
#' @rdname js
minifyr_js_terser <- function(
  input,
  output
    ) {
  minifyr_js_(input, output, "terser.js")
}

#' @export
#' @rdname js
minifyr_js_uglify <- function(
  input,
  output
    ) {
  minifyr_js_(input, output, "uglify.js")
}
#' @export
#' @rdname js
minifyr_js_yui <- function(
  input,
  output
    ) {
  minifyr_js_(input, output, "yui.js")
}

minifyr_js_ <- function(
  input,
  output,
  script,
  module = NULL
    ) {
  check_is_js(input)
  check_is_js(output)
  minifyr_c__(input, output, script, module)
}
