test_that("css minifying works", {
  skip_on_cran()
  skip_if_no_node()

  ipt <- "test.css"
  outpt <- "test2.css"
  for (
    fun in list(
      minifyr_css_cleancss,
      minifyr_css_crass,
      minifyr_css_cssnano,
      minifyr_css_csso,
      minifyr_css_sqwish,
      minifyr_css_yui
    )
  ){
    res <- fun(ipt, outpt)
    expect_nline(res, 1)
    expect_path(res, outpt)
    fs::file_delete(outpt)
  }

})
