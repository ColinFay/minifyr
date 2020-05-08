test_that("js minifying works", {
  skip_on_cran()
  skip_if_no_node()

  ipt <- "test.js"
  outpt <- "test2.js"
  for (
    fun in list(
      minifyr_js_babel,
      minifyr_js_terser,
      minifyr_js_uglify,
      minifyr_js_yui
    )
  ){
    res <- fun(ipt, outpt)
    expect_exists(res)
    expect_nline(res, 1)
    expect_path(res, outpt)
    fs::file_delete(outpt)
  }

  # GCC doesn't output only one line
  res <- minifyr_js_gcc(ipt, outpt)
  expect_exists(res)
  expect_nline(res, 14)
  expect_path(res, outpt)
  fs::file_delete(outpt)

})
