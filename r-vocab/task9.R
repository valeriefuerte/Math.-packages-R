task9 <- function() {
  vocab <- read.csv("Vocab.csv")
  vocabZero <- vocab[vocab$education == 0, ]
  plot(aggregate(vocabulary ~ year, vocabZero, FUN = mean), type = "l")
  vocabNan <- vocab[vocab$education != 0, ]
  vocabNanYears <- aggregate(vocabulary ~ year + education, vocabNan, FUN = mean)
  vocabNanYearsEducation <- aggregate(. ~ education, vocabNanYears, c)
  apply(vocabNanYearsEducation, 1, function(row) lines(x = row$year, y = row$vocabulary))
}
