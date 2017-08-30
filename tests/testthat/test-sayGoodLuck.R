context("functions")

source("../../R/sayGoodLuck.R")

test_that("Wish someone good luck", { 
        expect_output(sayGoodLuck("Hans"), "Good Luck, Hans")
})
