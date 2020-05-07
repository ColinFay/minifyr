#' Are npm and node available?
#'
#' @return Warning if not available, nothing if available.
#' @export
#' @importFrom attempt warn_if
node_available <- function(){
  test <- suppressWarnings(
    system(
      "npm -v",
      ignore.stdout = TRUE,
      ignore.stderr = TRUE
    )
  )
  warn_if(
    test, ~ .x != 0, "Error launching npm"
  )
  test <- suppressWarnings(
    system(
      "node -v",
      ignore.stdout = TRUE,
      ignore.stderr = TRUE
    )
  )
  message_if(
    test, ~ .x != 0, "Error launching Node"
  )
}
