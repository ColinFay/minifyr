test_that("json minifying works", {
  skip_on_cran()
  skip_if_no_node()

  ipt <- "test.json"
  outpt <- "test2.json"
  for (
    fun in list(
      minifyr_json_jsonminify
    )
  ) {
    res <- fun(ipt, outpt)
    expect_exists(res)
    expect_nline(res, 1)
    expect_path(res, outpt)
    fs::file_delete(outpt)
  }
})
