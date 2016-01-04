## hasTrailingSlash: Check for a trailing slash '/' in a path string and
##
hasTrailingSlash <- function(mystring){
    slashTF <- grep('/$', mystring, perl = TRUE)

    ## test if a path string ends in '/'
    if(length(slashTF) > 0){
        return(1)
    } else {
        return(0)
    }
}
