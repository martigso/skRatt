#' Generate "skratt" in a specific language
#'
#' @description Generates the Swedish word "skratt" (laugh) in
#'              the specified language.
#' @usage random_skratt()
#'
#' @param language Any of the two letter codes listed in skrattdat$ccode.
#'
#' @return A character vector of a specific version of "skratt".
#'
#' @md
#'
#' @examples
#' 
#' specific_skratt()
#'
#' @import crayon 
#' @export
#' 
#' 
specific_skratt <- function(language = "en") {
  
  index <- which(tolower(skrattdat$ccode) == tolower(language))
  
  if(identical(integer(), index)) {
    
    cat(
      "skRatt is not available in '",
      red$underline(language), "'", 
      sep = ""
    )
    
  }
  
  
  cat(
    "skRatt in",
    skrattdat$cname[index],
    "is:",
    cyan$underline(skrattdat$skratt[index])
  )
  
  
}