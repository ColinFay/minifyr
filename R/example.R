#' Return the path to a file example
#'
#' @param ext Extension to use
#'
#' @return a path
#' @export
#'
#' @examples
#' minifyr_example("css")
minifyr_example <- function(
  ext = c("html", "js", "json", "css")) {
  match.arg(ext)
  fls <- tempfile(fileext = sprintf(".%s", ext))
  file.copy(
    system.file(
      "examples",
      sprintf(
        "example.%s",
        ext
      ),
      package = "minifyr"
    ),
    fls
  )
  return(fls)
}
