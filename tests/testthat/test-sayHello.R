context("functions")

test_that("We say hello to a person", {
  expect_equal(sayHello("World"), "Hello, World\n")
})
