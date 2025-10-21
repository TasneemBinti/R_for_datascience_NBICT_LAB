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
 
#checking the summary of the model
 summary(regressor)
 #predicting the test set results
 
 y_pred=predict(regressor,newdata = test_set)
y_pred 
y_trainpred=predict(regressor,newdata = training_set)
 #visualizing the training set results
library(ggplot2)
ggplot()+
  geom_point(aes(x=training_set$YearsExperience,y=training_set$Salary),
                    colour="red")+
  geom_point(aes(x=training_set$YearsExperience,y=y_trainpred),
             colour="blue")+
ggtitle("Salary vs Experience ")+
  xlab("yrars of exp")+
  ylab("salary")
#geom pointer jaygay geom line likhle straight line hbe dot er bodole



#visualizing the test set results
ggplot()+
  geom_point(aes(x=test_set$YearsExperience,y=test_set$Salary),
             colour="red")+
  geom_line(aes(x=test_set$YearsExperience,y=y_pred ),
             colour="blue")+
  ggtitle("Salary vs Experience ")+
  xlab("yrars of exp")+
  ylab("salary")
#geom pointer jaygay geom line likhle straight line hbe dot er bodole

 
  