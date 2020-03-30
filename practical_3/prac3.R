data <- read.csv(file.choose())
str(data)
i <- 1
f <- 1
for(i in length(data))
{
  if(mean(data[,i])!=0 & sd(data[,i])!=1 )
  {
    flag<-0
  }
  i = i+1
}
if(flag==1)
  print("Dataset is already normalised")
if(flag!=1)
{
  print("dataset is not normalised")
  print("normalising the dataset")
  new_data <- scale(data[,-1])
}
