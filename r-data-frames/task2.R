# 1
size = sample(factor(c("big", "small")), 1000, TRUE)
color = sample(factor(c("red", "green", "blue")), 1000, TRUE)
balls <- data.frame(size, color)
# 2
print(table(balls))
print(summary(balls))
plot(balls)
print(nrow(balls[balls$size == "big" & balls$color == "green", ]))
# 3
expectedValue = sapply(sapply(balls$size, as.character), FUN = switch, "small" = 10, "big" = 1)
balls$weight <- rnorm(1000, expectedValue)
#4
print(table(balls))
print(summary(balls))
plot(balls)
