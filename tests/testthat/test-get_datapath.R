test_that("get_datapath works on the default DATAPATH envvar", {
    # setup
    tmp_dir <- tempdir(check = TRUE)
    withr::local_envvar(DATAPATH = tmp_dir)  # DATAPATH is the default

    # execution
    path_data <- get_datapath()

    # expectations
    expect_type(path_data, "character")
    expect_length(path_data, 1L)
    expect_equal(path_data, tmp_dir)
})

test_that("get_datapath throw an error if no envvar", {
    # expectations
    expect_error(get_datapath(), "It must containing the path to data")
})

test_that("get_datapath throw an error if no envvar", {
  # setup
  withr::local_envvar(DATAPATH = "not_existing_folder")

  # expectations
  expect_error(get_datapath(), "does not exists")
})
