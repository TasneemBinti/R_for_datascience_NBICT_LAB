#Importing the data set
dataset=read.csv("data.csv")

#Importing the librabry
library(ggplot2)

#basic histogram ggplot2
ggplot(dataset,aes(x=weight))+
geom_histogram()

#Changing the width of bins
ggplot(dataset,aes(x=weight))+
  geom_histogram(binwidth = 1)
##Changing the color of bins
ggplot(dataset,aes(x=weight))+
  geom_histogram(binwidth = 1,colour="blue",fill="red")

#Adding the mean line

my_plot=ggplot(dataset,aes(x=weight))+
  geom_histogram(binwidth = 1,colour="blue",fill="red")
my_plot               
my_plot+geom_vline(aes(xintercept=mean(weight)),color="darkblue",linetype="dashed",size=1)
#Histogram with density plot

ggplot(dataset,aes(x=weight))+
  geom_histogram(aes(y=after_stat(density)),colour="black",fill="white")+
  geom_density()
ggplot(dataset,aes(x=weight))+
  geom_histogram(aes(y=after_stat(density)),colour="black",fill="white")+
  geom_density(fill="blue")
ggplot(dataset,aes(x=weight))+
  geom_histogram(aes(y=after_stat(density)),colour="black",fill="white")+
  geom_density(fill="blue",alpha=.2)
#changing line color and fill color



