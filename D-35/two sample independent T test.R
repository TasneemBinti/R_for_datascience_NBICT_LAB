#Importing the data set
dataset=read.csv("scores.csv")

#Normality check
shapiro.test(dataset$Male)
shapiro.test(dataset$Female)

#checking for the homogenity of variances
var.test(x=dataset$Male,y=dataset$Female)

#running t test
t.test(x=dataset$Male,y=dataset$Female,var.equal = TRUE)
