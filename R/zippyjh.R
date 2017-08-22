#' Say Good Luck
#'
#' @param whom name to wish good luck
#' @return "Good Luck" string to \code{whom}
#' @examples
#' sayGoodLuck('zippyjh')
#' @export
sayGoodLuck <- function(whom) {
	sprintf("Good Luck, %s\n", whom)
}
