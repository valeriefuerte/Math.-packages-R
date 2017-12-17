task3 <- function() {
  vocab <- read.csv("Vocab.csv")
  cat(mean(vocab$vocabulary))
  cat(mean(vocab$vocabulary[vocab$sex == "Male"]))
  cat(mean(vocab$vocabulary[vocab$sex == "Female"]))
}