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
  force = FALSE) {
  # Prompt the user, we're installing stuff on their machine, unless they bypass
  if (!force) {
    ok <- yesno::yesno("This will install our app on your local library, are you ok with that? ")
  } else {
    ok <- TRUE
  }

  if (ok) {
    # Maybe the user has a custom location for the minifyr package
    sys_minifyr <- system.file(
      "node",
      package = "minifyr"
    )
    # If the user has a custom location, copy the files there
    # This is useful for deploying on a server (aka Connect that has
    # a read-only file system by default)
    if (Sys.getenv("MINIFYR_HOME") != sys_minifyr){
      lapply(
        list.files(sys_minifyr, full.names = TRUE),
        function(x){
          file.copy(
            from = x,
            to = file.path(Sys.getenv("MINIFYR_HOME"), basename(x))
          )
        }
      )
    }
    processx::run(
      echo = TRUE,
      command = "npm",
      args = c("install"),
      wd = Sys.getenv("MINIFYR_HOME", sys_minifyr)
    )
  }
  return(invisible(force))
}
