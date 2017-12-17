task4 <- function() {
  vocab <- read.csv("Vocab.csv")
  vocabEductaion <- aggregate(vocabulary ~ education, vocab, mean)
  vocab.means <- vocabEductaion$vocabulary
  names(vocab.means) <- paste(vocabEductaion$education, "лет")
  vocab.means
}