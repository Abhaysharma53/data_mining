library(editrules)
library(ggplot2)
getwd()
data <- read.csv(file.choose())
str(data)
summary(data)
summary(data$Petal.Width)
data$Petal.Width
data[which(data$Petal.Width==Inf),]
#replacing infinite by NA
is.na(data$Petal.Width)<- sapply(data$Petal.Width,is.infinite)
data[86,]
summary(data)
complete <- sum(complete.cases(data))
total<-nrow(data)
percent <- (complete/total)*100

attach(data)

check <- editset(expression(
  Species %in% c("setosa","versicolor","virginica"),
  Sepal.Length > 0,
  Sepal.Width > 0,
  Petal.Length > 0,
  Petal.Width > 0,
  Petal.Length >= 2* Petal.Width,
  Sepal.Length <= 30,
  Sepal.Length > Petal.Length
  
))
result <- violatedEdits(check,data)
summary(result)
plot(result)
boxplot.stats(Sepal.Length)
boxplot(stats)
