task5 <- function() {
  vocab <- read.csv("Vocab.csv")
  vocab.means <- task4()
  barplot(vocab.means)
}
