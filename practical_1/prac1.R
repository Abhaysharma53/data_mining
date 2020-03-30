install.packages("editrules")
library(editrules)
getwd()
setwd("C:/Users/USER/Desktop/Mining")
getwd()
data <- read.table(file.choose(), header = TRUE)
attach(data)
#rm(fi)
str(data)

check <- editset(expression(
  age >= 0,
  age <= 150,
  age > years_married,
  Status %in% c('Single','Married','Widowed'), 
  if(age < 18)
    age_group %in% c('Child'),
  if(age > 18 & age < 65)
    age_group %in% c('Adult'),
  if(age > 65)
    age_group %in% c('Elderly')  
  
))
 
result <- violatedEdits(check,data)
result
summary(result)
plot(result)
check
