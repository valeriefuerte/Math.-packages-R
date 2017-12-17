task5 <- function(size) {
  n <- rnorm(size)
  e <- rexp(size)
  a <- c(FALSE, TRUE)
  v <- sample(a, size, replace = TRUE)
  ifelse(v, e, n)
}