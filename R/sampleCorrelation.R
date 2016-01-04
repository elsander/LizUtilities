# Obtain average pairwise correlation between the (i,j)th and (j,i)th
# entries of the matrix A.
# Input:
# - A: square matrix; its diagonal does not matter
# Output:
# - The sample correlation
sampleCorrelation <- function(A) {
    x <- A[upper.tri(A)]
    B <- t(A)
    y <- B[upper.tri(B)]
    return(cor(x, y))
}
