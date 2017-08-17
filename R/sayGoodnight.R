#' Say Goodnight 
#'
#' @param whom name to say good night
#' @return the say Good night string to \code{whom}
#' @examples
#' sayGoodnight('skon')
#' @export
sayGoodnight <-function(whom) {
	sprintf("Good nigth, %s\n", whom)
}

