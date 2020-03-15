#Configure everything to run the test script 
context("Simple Example")
library(testthat)
path <- "C:/Users/heath/OneDrive/Programming/RSandbox/test_that_project/"
source(paste0(path,"use_case_example.R"))


test_that("check commutative property for errors", {
  
  #Doesn't throw an error in the try catch 
  expect_error(calculate_discriminant(0,1,1), "You cannot divide by zero")
  
  
})


test_that("check commutative property for errors again", {
  
  #Set up the expected behavior 
  expect_identical(toString(calculate_discriminant(0,1,1)), "You cannot divide by zero")
  
  
})

