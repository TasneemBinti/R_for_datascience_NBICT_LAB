#importing the library
library(BSDA)
#importing data set
dataset=read.csv("Perfume_Two_Sample.csv")
machine1sd=sd(dataset$Machine.1)
View(machine1sd)
machine2sd
machine2sd=sd(dataset$Machine.2)
#Running z test
z.test(x=dataset$Machine.1, y=dataset$Machine.2,sigma.x = machine1sd,
       sigma.y=machine2sd)
