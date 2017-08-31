context("sort")

test_that("Sort an array by merge sort algorithm", {
  expect_equal(mergeSort(c(534, 534, 43, 1, 34, 5, 6234, 51)), c(1, 5, 34, 43, 51, 534, 534, 6234))
  expect_equal(mergeSort(c(534, 534, 43, 1, 34, 5, 6234, 51), ascending = FALSE), c(6234, 534, 534, 51, 43, 34, 5, 1))
})
