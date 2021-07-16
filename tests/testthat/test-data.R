test_that("read_nested works", {
  # expectations
  expect_false(dplyr::is_grouped_df(denotion))
  expect_false(any(purrr::map_lgl(denotion, is.factor)))
})

test_that("read_beta works", {
  # expectations
  expect_false(dplyr::is_grouped_df(denotion_beta))
  expect_false(any(purrr::map_lgl(denotion_beta, is.factor)))
})
