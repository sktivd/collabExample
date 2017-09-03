#' Merge Sort
#'
#'   sort a numeric array by merge sort algorithm
#'
#' @param unsorted a numeric array
#' @param ascending sorted by ascending value (default: TRUE) 
#' @return sorted numeric array
#' @examples
#' mergeSort(c(324, 234, 243))
#' @export
mergeSort <- function(unsorted, ascending = TRUE) {
	.Call("merge_sort", unsorted, ascending, PACKAGE = "collabExample")
}