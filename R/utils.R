#' @importFrom fs path_abs
#' @importFrom processx run
minifyr_c__ <- function(
  input,
  output,
  script,
  module = NULL
){
  input <- path_abs(input)
  output <- path_abs(output)
  run(
    command = "node",
    args = c(
      script,
      input,
      output,
      module
    ),
    wd = system.file("node", package = "minifyr")
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
}

check_is_css <- function(file){
  check_ext_(file, "css")
}
check_is_html <- function(file){
  check_ext_(file, "html")
}
check_is_js <- function(file){
  check_ext_(file, "js")
}
check_is_json <- function(file){
  check_ext_(file, "json")
}
