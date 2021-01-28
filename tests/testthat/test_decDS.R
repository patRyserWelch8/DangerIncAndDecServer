context("decDS-expt")
test_that("expt",
{

  assign(".DangerEnv", new.env(), envir = .GlobalEnv)
  settings <- list(env <- ".DangerEnv")
  assign(".DangerSettings", settings, envir = .GlobalEnv)
  expect_true(exists(".DangerEnv", envir = .GlobalEnv))
  DangerEnv <- get(".DangerEnv", envir = .GlobalEnv)
  expect_false(exists("value", envir = DangerEnv))
  expect_true(decDS())
  DangerEnv <- get(".DangerEnv", envir = .GlobalEnv)
  expect_true(exists("value", envir = DangerEnv))
  value <- get("value",envir = DangerEnv)
  expect_equal(value, 0)
  expect_true(decDS())
  DangerEnv <- get(".DangerEnv", envir = .GlobalEnv)
  expect_true(exists("value", envir = DangerEnv))
  value <- get("value",envir = DangerEnv)
  expect_equal(value, -1)
  rm(list = ls(envir = DangerEnv, all.names = TRUE), envir = DangerEnv)
  rm(list = ls(envir = .GlobalEnv, all.names = TRUE), envir = .GlobalEnv )


})
