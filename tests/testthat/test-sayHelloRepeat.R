context("functions")

test_that("We say hello to a person with 3 times", {
        expect_equal(sayHelloRepeat(3), "Hello! Hello! Hello! ")
})
