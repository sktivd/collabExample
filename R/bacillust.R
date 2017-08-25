#' Say Hello
#'
#' Say Hello with repeatition 
#'
#' @param iter num of say hello
#' @return the say string with iter nub
#' @examples 
#' sayHelloRepeat(3)
#' @export
sayHelloRepeat <- function(iter) {
        
        hello_str <- c()
        for(i in 1:iter)
        {
                hello_str <- paste(hello_str, "Hello! ", sep = "")
        }
        sprintf(hello_str)
}
