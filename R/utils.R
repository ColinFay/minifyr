#' @importFrom fs path_abs
#' @importFrom processx run
minifyr_c__ <- function(
  input,
  output,
  script,
  module = NULL
    ) {
  input <- path_abs(input)
  output <- path_abs(output)
  sys_minifyr <- system.file(
    "node",
    package = "minifyr"
  )

  run(
    echo = TRUE,
    echo_cmd = TRUE,
    command = "node",
    args = c(
      script,
      input,
      output,
      module
    ),
    wd = Sys.getenv("MINIFYR_HOME", sys_minifyr)
  )
  return(output)
}

#' @importFrom attempt stop_if_not
#' @importFrom tools file_ext
check_ext_ <- function(file, ext) {
  file_ext_is <- tools::file_ext(file)
  stop_if_not(
    file_ext_is,
    ~ .x == ext,
    sprintf("Wrong file extension: \n- Provided: %s\n- Expected: %s", file_ext_is, ext)
  )
  TRUE
}

#' Verify the extension of a file
#'
#' @param file path to a file
#'
#' @return
#' @export
#' @rdname check
#' @examples
#' check_is_css("path/to/css")
check_is_css <- function(file) {
  check_ext_(file, "css")
}
#' @export
#' @rdname check
check_is_html <- function(file) {
  check_ext_(file, "html")
}
#' @export
#' @rdname check
check_is_js <- function(file) {
  check_ext_(file, "js")
}
#' @export
#' @rdname check
check_is_json <- function(file) {
  check_ext_(file, "json")
}
