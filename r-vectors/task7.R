task7 <- function(steps) {
  p <- matrix(
    c( 1,  0,
       -1,  0,
       0,  1, 
       0, -1), 
    nrow = 2 , ncol = 4, byrow = FALSE)
  s <- p[, sample(ncol(p), steps, TRUE)]
  c(sum(s[1,]), sum(s[2,]))
}