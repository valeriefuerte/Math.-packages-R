task6 <- function() {
  x <- runif(1000, -1, 1)
  y <- rnorm(1000, 0, 1)
  z <- rnorm(1000, 0, 10)
  t <- rnorm(1000, 0.01, 1)
  t_test(x)
  t_test(y)
  t_test(z)
  t_test(t)
  two_t_test(x, y)
  two_t_test(x, z)
  two_t_test(x, t)
  two_t_test(y, z)
  two_t_test(y, t)
  two_t_test(z, t)
}

t_test <- function(vec) {
  t <- t.test(vec, mu = 0)
  cat(deparse(substitute(vec)), ":", (t$conf.int[1] <= 0 && 0 <= t$conf.int[2]), "\n")
}

two_t_test <- function(a, vec) {
  t <- t.test(a, vec, mu = 0)
  cat(deparse(substitute(a)), ",", deparse(substitute(vec)), ":", (t$conf.int[1] <= 0 && 0 <= t$conf.int[2]), "\n")
}
