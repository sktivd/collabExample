#' doSomething
#'
#' @param activity activity name for me to eat 
#' @return I am now doing some string to \code{activity}
#' @examples
#' doSomething('Basketball')
#' @export
doSomething <- function(activity) {
	sprintf("I am now doing some, %s\n", activity)
}
