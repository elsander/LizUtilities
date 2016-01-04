# Obtain the sample variance of the upper and lower triangular parts
# of a matrix A, as well as of the whole matrix itself. The diagonal
# of the matrix is ignored.
# Input:
# - A: square matrix; its diagonal does not matter
# Output: a list with items:
# - V_total: variance of full matrix (minus diagonal)
# - V_upper: variance of upper triangular part
# - V_lower: variance of lower triangular part
sampleVariance <- function(A) {
    var_T <- var(c(A[upper.tri(A)], A[lower.tri(A)]))
    var_U <- var(A[upper.tri(A)])
    var_L <- var(A[lower.tri(A)])
    return(list(V_total=var_T, V_upper=var_U, V_lower=var_L))
}
