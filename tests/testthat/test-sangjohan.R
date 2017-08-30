#library(testthat)
context("functions")

#source('~/collabExample/R/sangjohan.R')

test_that("eatSometing test", {
   expect_equal("I am now eating some food",eatSomething("food"))
})
