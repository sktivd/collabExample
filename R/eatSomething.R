#' eatSomething
#'
#' @param food food name for me to eat 
#' @return I am now eating some string to \code{food}
#' @examples
#' eatSomething('Noodle')
#' @export
eatSomething<-function(food) {
	sprintf("I am now eating some %s", food)
}

