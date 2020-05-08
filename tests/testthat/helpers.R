skip_if_no_node <- function() {

  if (Sys.which("node") == ""){
    testthat::skip(message = "No node available")
  }

  x <- suppressWarnings(
    system(
      "node -v",
      ignore.stdout = TRUE,
      ignore.stderr = TRUE
    )
  )
  if (x != 0){
    testthat::skip(message = "No docker Backend available")
  }
}

expect_nline <- function(file, lines){
  testthat::expect_equal(length(readLines(file, warn = FALSE)), lines)
}

expect_path <- function(file, path){
  testthat::expect_equal(file, fs::path_abs(path))
}

expect_exists <- function(file){
  testthat::expect_true(fs::file_exists(file))
}
