#' Generate "skratt" in a random language
#'
#' @description Generates the Swedish word "skratt" (laugh) in
#'              a random language.
#'
#' @usage random_skratt()
#'
#'
#' @return A character vector of a randomly generated version of "skratt".
#'
#'
#' @md
#'
#'
#'
#' @examples
#' 
#' random_skratt()
#'
#' @import crayon
#' @export
#' 
#' 
random_skratt <- function() {
  
  index <- sample(1:nrow(skrattdat), 1)
  cat(
    "skRatt in",
    skrattdat$cname[index],
    "is:",
    cyan$underline(skrattdat$skratt[index])
  )
  
  
}