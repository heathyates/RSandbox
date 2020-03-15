#Configure everything we need to run the test 
context("Simple Example and Unit Test Patters")
library(testthat)
path <- "C:/Users/heath/OneDrive/Programming/RSandbox/test_that_project/"
source(paste0(path,"simple_example.R"))

test_that("Arrange, Act, Assert Pattern", {
  
  ## Arrange (the test)
  foo = 3
  bar = 3
  
  
  ## Act (Perform the test)
  foobar = foo + bar
  
  ## Assert (do the actual testing)
  expect_equal(foobar, 6)
  
})



test_that("Given, When, Then Pattern", {
  ## Given
  isWorking = TRUE
  establishConnection = TRUE
  
  
  ##When
  if(establishConnection == isWorking) {
    connected = TRUE
  }
  
  ##Then (what do we expect?)
  expect_identical(connected, establishConnection)
  
})



#A more pro arrange, act, assert example 
test_that("Check commutative property", {
  expect_identical(my_good_sum(4, 6), 10)
  expect_identical(my_good_sum(6, 4), 10)
})
