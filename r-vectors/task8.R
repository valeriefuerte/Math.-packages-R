task8 <- function(steps, n) {
  p <- replicate(n, task7(steps))
  plot(t(p))
}