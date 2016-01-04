# Obtain the sample mean of the upper and lower triangular parts of a
# matrix A, as well as of the whole matrix itself. The diagonal of the
# matrix is ignored.
# Input:
# - A: square matrix; its diagonal does not matter
# Output: a list with items:
# - E_total: mean of full matrix (minus diagonal)
# - E_upper: mean of upper triangular part
# - E_lower: mean of lower triangular part
sampleMean <- function(A) {
    mu_T <- mean(c(A[upper.tri(A)], A[lower.tri(A)]))
    mu_U <- mean(A[upper.tri(A)])
    mu_L <- mean(A[lower.tri(A)])
    return(list(E_total=mu_T, E_upper=mu_U, E_lower=mu_L))
}
