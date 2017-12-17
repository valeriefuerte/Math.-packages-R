task6 <- function() {
  vocab <- read.csv("Vocab.csv")
  vocabT6 <- aggregate(vocabulary ~ sex + education, vocab, FUN = mean)
  vocabT6
  barplot(matrix(vocabT6$vocabulary, nrow = 2), beside = TRUE, names.arg = paste(0:20, "лет"))
}
