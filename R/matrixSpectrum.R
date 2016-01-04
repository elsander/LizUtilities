# Organize the spectrum of matrix A into dataframe. Set "symm" to TRUE
# if A is symmetric for faster execution.
# Input:
# - A: square matrix whose eigenvalues we want to obtain
# - symm: if TRUE, A is assumed symmetric, otherwise not
# Output: a data frame with two columns:
# - Re: real parts of eigenvalues
# - Im: imaginary parts of eigenvalues
matrixSpectrum <- function(A, symm=FALSE) {
    ews <- eigen(A, symmetric=symm, only.values=TRUE)$values
    return(data.frame(Re=Re(ews), Im=Im(ews)))
}
