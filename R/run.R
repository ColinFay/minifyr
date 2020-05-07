#' Title
#'
#' @param input CSS file to minify
#' @param output Name of the output file
#'
#' @return The output path
#' @export
#' @importFrom fs path_abs
#' @importFrom processx run
#' @examples
minifyr_run <- function(
  input,
  output
){
  input <- path_abs(input)
  output <- path_abs(output)
  if (ok){
    res <- run(
      command = "node",
      args = c(
        "app.js",
        input,
        output
      ),
      wd = system.file("node", package = "minifyr")
    )
  }
  invisible(res)
}
