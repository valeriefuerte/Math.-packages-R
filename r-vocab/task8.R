task8 <- function() {
  vocab <- read.csv("Vocab.csv")
  years <- unique(vocab$year)
  cat(years)
  vocabYears <- aggregate(vocabulary ~ year, vocab, FUN = mean)
  plot(vocabYears, type = "l")
}
