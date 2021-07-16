test_that("read_nested works", {
  # execution
  expect_s3_class(read_nested(), "tbl_df")
})

test_that("read_beta works", {
  # execution
  expect_s3_class(read_beta(), "tbl_df")
})
