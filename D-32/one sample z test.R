#Installing BSDA
install.packages("BSDA")
library("BSDA")


#importing the dataset
dataset=read.csv("Perfume.csv")
mean(dataset$Machine.1)
z.test(x = dataset$Machine.1,alternative = "greater",mu = 150,sigma.x = 2)
