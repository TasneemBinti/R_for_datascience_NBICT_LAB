#Setup: packages and data loading
#install.packages(c("e1071","ggplot2","dplyr"))
library(e1071)
library(ggplot2)
library(dplyr)
 
#loading the dataset
dataset=read.csv("day.csv")


#Basic cleaning and feature selection
bike=dataset%>%
  select(cnt,temp,atemp,hum,windspeed,season,yr,mnth,holiday,weekday,workingday,weathersit)
#convert categorical variables to factors
bike=bike%>% mutate(season=factor(season),yr=factor(yr),mnth=factor(mnth),holiday=factor(holiday),
                    weekday=factor(weekday),workingday=factor(workingday),weathersit=factor(weathersit))
str(bike)

#Training/Test Split

sat.seed(123)
n=nrow(bike)
indices= seq_len(n)
train_idx=sample(indices,size=0.7*n)


train_set=bike[train_idx, ]
train_set
test_set=bike[1-train_idx, ]
test_set
