#importing data set
dataset=read.csv("data.csv")
library(ggplot2)
#creating the basic histogram
ggplot(dataset,aes(x=weight))+
  geom_histogram(color="white")
#changing histogram plot line clor by color

ggplot(dataset,aes(x=weight,fill=sex))+
  geom_histogram(color="white",alpha=0.5,position="identity")
ggplot(dataset,aes(x=weight,fill=sex))+
  geom_histogram(color="white",position="identity")

#we can change the position adjustment 
#to use for overlapping points on the layer

#possible values for the argument position are
#"identity". "stack", "dodge", default is "stack"

#Interleaved histogram(both sex -diffrents histogram)
ggplot(dataset,aes(x=weight,fill=sex))+
  geom_histogram(color="white",position="dodge")
#changing the position of legend
ggplot(dataset,aes(x=weight,fill=sex))+
  geom_histogram(color="white",position="dodge")+
  theme(legend.position = "top")
#The plyr package is used to calculate the groupwise mean(mean weight of each group)
#installing plyr package
install.packages("plyr")
library(plyr)
group_means=ddply(dataset,"sex",summarise,grp.mean=mean(weight))
group_means

#Adding mean lines
my_plot=ggplot(dataset,aes(x=weight,fill=sex))+
  geom_histogram(color="white",position="dodge")+
  geom_vline(data=group_means,aes(xintercept=grp.mean,linetype="solid")+
  theme(legend.position = "top")
  my_plot
#MAking mean line same clr as the sex clor 
my_newplot=ggplot(dataset,aes(x=weight,fill=sex))+
  geom_histogram(color="white",position="dodge")+
  geom_vline(data=group_means,aes(xintercept=grp.mean,color=sex),linetype="dotted")+
  theme(legend.position = "top")
my_newplot

#Using custom color palattes
my_newplot+scale_color_manual(values=c("red","seagreen"))+scale_fill_manual(values=c("darkblue","skyblue"))
#hexadecimal value for clr
my_newplot+scale_color_manual(values=c("#999999","#E69F00"))+scale_fill_manual(values=c("#999999","#E69F00"))
#using color brewer color paletters
my_newplot+scale_color_brewer(palette="Dark2")+
  scale_fill_brewer(palette = "Dark2")

#using grey scale
my_newplot+scale_color_grey()+scale_fill_grey()+
  theme_classic()




