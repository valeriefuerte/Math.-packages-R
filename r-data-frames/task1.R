library(MASS)
# 1
cars <- Cars93
# 2
cars$kpl <- cars$MPG.city / 0.4251321
# 3
tmp = cars$Horsepower > 200
horsepower <- cars[tmp, ]
# 4
plot(horsepower$kpl, horsepower$Horsepower, xlab = "Километров в литре", ylab = "Лошадиных сил")
linearRegression = lm(horsepower$Horsepower ~ horsepower$kpl)#строим линейную регрессию
abline(linearRegression)
# 5
copy <- cars[ , c("Horsepower", "kpl")]
copy$wt <- cars$Weight / 0.000453592
plot(copy)