test_that("read_nested works", {
  skip_on_ci()
  skip_on_cran()

  # expectations
  expect_s3_class(read_nested(), "tbl_df")
})

test_that("read_beta works", {
  skip_on_ci()
  skip_on_cran()

  # expectations
  expect_s3_class(read_beta(), "tbl_df")
})
