#' Minifying folders
#'
#' @param path Path to the folder containing files to minify
#' @param package Package containing files to minify
#' @param fun Function to use to minify
#' @inheritParams base::list.files
#' @param ... Parameters passed to `base::list.files()`
#'
#' @return
#'
#' @export
#' @rdname minify-folders
minify_folder_css <- function(
  path,
  fun,
  recursive = TRUE,
  ...
){
  minify_folder_(
    path,
    pattern = "\\.css$",
    fun = fun,
    recursive = recursive
  )
}

#' @export
#' @rdname minify-folders
minify_package_css <- function(
  package,
  fun,
  recursive = TRUE,
  ...
){
  minify_folder_css(
    system.file(package = package),
    pattern = "\\.css$",
    fun = fun,
    recursive = recursive
  )
}

#' @export
#' @rdname minify-folders
minify_folder_js <- function(
  path,
  fun,
  recursive = TRUE,
  ...
){
  minify_folder_(
    path,
    pattern = "\\.js$",
    fun = fun,
    recursive = recursive
  )
}

#' @export
#' @rdname minify-folders
minify_package_js <- function(
  package,
  fun,
  recursive = TRUE,
  ...
){
  minify_folder_css(
    system.file(package = package),
    pattern = "\\.js$",
    fun = fun,
    recursive = recursive
  )
}

#' @importFrom fs path_abs
minify_folder_ <- function(
  path,
  pattern,
  fun,
  recursive,
  ...
){
  fls <- list.files(
    path = fs::path_abs(path),
    pattern = pattern,
    recursive = recursive,
    full.names = TRUE,
    ...
  )
  lapply(fls, function(x){
      fun(x, x)
      cat(basename(x), "minified ----\n")
    }
  )
}
