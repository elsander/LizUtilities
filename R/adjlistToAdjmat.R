#' Convert an Adjacency List to an Adjacency Matrix
#'
#' Generates a (dense) adjacency matrix from predator and prey vectors
#'
#' @param predators vector of predator names in adjacency list
#' @param prey vector of prey names in adjacency list
#'
#' @return an NxN matrix, where N is the number of unique species in the
#' predator and prey vectors.
#'
#' @examples
#' pred <- c('Lion', 'Tiger', 'Bear')
#' prey <- c('Gazelle', 'Mouse', 'Berry')
#' adjlistToAdjmat()
#' 
#' @export

adjlistToAdjmat <- function(predators, prey){
    if(length(predators) != length(prey)){
        stop('pred and prey vectors must be same length')
    }
    spnames <- unique(c(predators, prey))
    adjmat <- matrix(0, length(spnames), length(spnames))
    rownames(adjmat) <- colnames(adjmat) <- spnames
    for(i in 1:length(predators)){
        adjmat[predators[i], prey[i]] <- 1
        adjmat[prey[i], predators[i]] <- -1
    }
    return(adjmat)
}
