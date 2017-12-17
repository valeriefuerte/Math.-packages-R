task2 <- function(n, size) {
  vec <- sample(n, size, T)
  print(table(vec))
  vec
}
