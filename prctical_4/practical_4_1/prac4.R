getwd()
setwd("C:/Users/USER/Desktop/Mining")
#apriori algorithm
install.packages("arules")
library(arules)
data <- read.csv(file.choose(), header = FALSE)
mat <- read.transactions(file.choose(), sep = ",", rm.duplicates = TRUE)
summary(mat)
itemFrequencyPlot(mat, topN = 20)

#training dataset for apriori algorithm
rules = apriori(data = mat, parameter = list(support= 0.0045, confidence=0.25))
#visualizing the result
inspect(sort(rules, by='lift')[1:10])

9*7/7500
