myfunction <- function() {
	x <- rnorm(9100)
	mean(x)
}

second <- function(x) {
	x + rnorm(length(x))
}