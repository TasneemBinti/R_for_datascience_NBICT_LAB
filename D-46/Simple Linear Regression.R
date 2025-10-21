#Importing dataset

dataset=read.csv("Salary_Data.csv")
#splitting the dataset into training and test set
#install package
install.packages("caTools")
library(caTools)
set.seed(123)
split=sample.split(dataset$Salary,SplitRatio = 2/3)
split

 training_set=subset(dataset,split==TRUE)
 test_set=subset(dataset,split==FALSE)
 
 #Fitting the simple Linear Regression Model to the training set
 regressor=lm(formula=Salary~YearsExperience,data = training_set)
  