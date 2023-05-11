#' Minify JSON Files
#'
#' Minify JSON files.
#'
#' @details
#'
#' Available minifiers are:
#'
#' + [jsonminify](https://github.com/fkei/JSON.minify), with `minifyr_json_jsonminify()`
#'
#' @param input File to minify
#' @param output Name of the output file
#'
#' @return The output path
#'
#' @export
#' @rdname json
minifyr_json_jsonminify <- function(
  input,
  output
    ) {
  minifyr_json_(input, output, "default.js", "jsonminify")
}

minifyr_json_ <- function(
  input,
  output,
  script,
  module = NULL
    ) {
  check_is_json(input)
  check_is_json(output)
  minifyr_c__(input, output, script, module)
}
