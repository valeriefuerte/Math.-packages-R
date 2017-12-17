task4 <- function(steps) {
  a <- c(1, -1)
  vec <- rep_len(a, steps)
  sum(vec)
}