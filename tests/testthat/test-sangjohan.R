context("functions")

source("~/collabExample/R/sangjohan.R")
source("~/collabExample/R/sayGoodnight.R")
source("~/collabExample/R/doSomething.R")
source("~/collabExample/R/eatSomething.R")

test_that("sayHello test", {
  expect_equal("Hello, sangjo",sayHello("sangjo"))
})

test_that("sayGoodnight test", {
  expect_equal("Good night, sangjo",sayGoodnight("sangjo"))
})

test_that("eatSometing test", {
  expect_equal("I am now eating some food",eatSomething("food"))
})

test_that("doingSometing test", {
  expect_equal("I am now doing some exercise",doSomething("exercise"))
})

