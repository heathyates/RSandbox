context("Simple Demonstration")
library(testthat)



test_that("Simple Tests", {
  
  x <- c(1, 2, 3)
  
  expect_that( length(x), equals(3) )
  expect_that( x, is_a("numeric") )
})



test_that("Simple Tests Failed", {
  
  x <- c(1, 2, 3)
  
  expect_that( length(x), equals(2.7) )
  expect_that( x, is_a("data.frame") )
})