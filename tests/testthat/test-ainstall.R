test_that("install works", {
  skip_on_cran()
  skip_if_no_node()
  res <- minifyr_npm_install(TRUE)
  expect_true(res)
})
