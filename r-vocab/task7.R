task7 <- function() {
  vocab <- read.csv("Vocab.csv")
  vocabMale <- vocab$vocabulary[vocab$education == max(vocab$education) & vocab$sex == "Male"]
  vocabFemale <- vocab$vocabulary[vocab$education == max(vocab$education) & vocab$sex == "Female"]
  t <- t.test(vocabMale, vocabFemale, mu = 0)
  t
  t$conf.int[1] == t$conf.int[2]
}
