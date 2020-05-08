test_that("html minifying works", {
  skip_on_cran()
  skip_if_no_node()

  ipt <- "test.html"
  outpt <- "test2.html"
  for (
    fun in list(
      minifyr_html_minifier
    )
  ){
    res <- minifyr_html_minifier(ipt, outpt)
    expect_exists(res)
    expect_nline(res, 1)
    expect_path(res, outpt)
    fs::file_delete(outpt)
  }

})
