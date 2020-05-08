#' Run NPM install
#'
#' @param force should the user be prompted to install?
#'
#' @return An installed lib
#' @export
#'
#' @importFrom yesno yesno
#' @importFrom processx run
minifyr_npm_install <- function(
  force = FALSE
){
  # Prompt the user, we're installing stuff on their machine, unless they bypass
  if (!force) {
    ok <- yesno::yesno("This will install our app on your local library, are you ok with that? ")
  } else {
    ok <- TRUE
  }

  if (ok){
    processx::run(
      command = "npm",
      args = c("install"),
      wd = system.file("node", package = "minifyr")
    )
  }
  return(invisible(force))
}
