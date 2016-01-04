# Create a dataframe with information to draw the contour of an
# ellipse in the complex plane; the principal axes of the ellipse are
# assumed to be parallel with the real and imaginary axes.
# Input:
# - centerx: center of the ellipse along real axis
# - centery: center of the ellipse along imaginary axis
# - radiusx: horizontal radius
# - radiusy: vertical radius
# Output: a data frame with two columns:
# - Re: real parts of ellipse's coordinates
# - Im: imaginary parts of ellipse's coordinates
ellipseDataFrame <- function(centerx, centery, radiusx, radiusy) {
    thetas <- seq(pi/2, 0, length=1000)
    xbase <- radiusx*cos(thetas)
    ybase <- radiusy*sin(thetas)
    x <- c(xbase, rev(xbase), -xbase, rev(-xbase))
    y <- c(ybase, rev(-ybase), -ybase, rev(ybase))
    return(data.frame(Re=x+centerx, Im=y+centery))
}
