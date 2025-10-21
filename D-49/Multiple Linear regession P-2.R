 #importinhg the data set
dataset=read.csv("50_Startups.csv")

#Encoding the categorical data
dataset$State=factor(dataset$State,
                     levels=c("New York","California","Florida"),
                     labels=c(1,2,3))

#Splitting the data set into the traing set and test set
library(caTools)
set.seed(123)
split=sample.split(dataset$Profit,SplitRatio=0.8)
training_set=subset(dataset,split==TRUE)
test_set=subset(dataset,split==FALSE)

#Fitting the Multiple Linear Regression Model to the Training set
regressor=lm(formula = Profit~R.D.Spend+ Administration+ Marketing.Spend+ State,
             data=training_set)
#OR(Shortcut if all variable is taken)
regressor=lm(formula = Profit.,data=training_set)


summary(regressor)

regressor=lm(formula = Profit~R.D.Spend+ Administration+ Marketing.Spend+ State,
             data=training_set)
