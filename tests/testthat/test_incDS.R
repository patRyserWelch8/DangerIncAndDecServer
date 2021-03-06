context("incDS-expt")
test_that("expt",
{
  assign(".DangerEnv", new.env(), envir = .GlobalEnv)
  settings <- list(env <- ".DangerEnv")
  assign(".DangerSettings", settings, envir = .GlobalEnv)
  expect_true(exists(".DangerEnv", envir = .GlobalEnv))
  DangerEnv <- get(".DangerEnv", envir = .GlobalEnv)
  expect_false(exists("value", envir = DangerEnv))
  expect_true(incDS())
  DangerEnv <- get(".DangerEnv", envir = .GlobalEnv)
  expect_true(exists("value", envir = DangerEnv))
  value <- get("value",envir = DangerEnv)
  expect_equal(value, 1)
  expect_true(incDS())
  DangerEnv <- get(".DangerEnv", envir = .GlobalEnv)
  expect_true(exists("value", envir = DangerEnv))
  value <- get("value",envir = DangerEnv)
  expect_equal(value, 2)

})
