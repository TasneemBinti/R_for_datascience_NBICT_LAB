library(ggplot2)
datasets=mtcars
datasets
datasets
#Converting cyl column from a numeric to a factor variable
datasets$cyl=as.factor(datasets$cyl)
#Adding regression lines based on multiple groups
ggplot(datasets,aes(x=wt,y=mpg,colour = cyl))+
  geom_point()+
  geom_smooth(method=lm)

ggplot(datasets,aes(x=wt,y=mpg,colour = cyl,shape=cyl))+
  geom_point()+
  geom_smooth(method=lm)
#Removing the confidence intervals


ggplot(datasets,aes(x=wt,y=mpg,colour = cyl,shape=cyl))+
  geom_point()+
  geom_smooth(method=lm,se=FALSE)

#Extending the regression lines:
ggplot(datasets,aes(x=wt,y=mpg,colour = cyl,shape=cyl))+
  geom_point()+
  geom_smooth(method=lm,se=FALSE,fullrange=TRUE)
#Filling the color of confidence bands 
ggplot(datasets,aes(x=wt,y=mpg,colour = cyl,shape=cyl))+
  geom_point()+
  geom_smooth(method=lm,aes(fill=cyl))

#Changing point shapes manually

ggplot(datasets,aes(x=wt,y=mpg,colour = cyl,shape=cyl))+
  geom_point()+
  geom_smooth(method=lm,se=FALSE,fullrange=TRUE)+
  scale_shape_manual(values = c(16,22,17))+
  theme(legend.position = "top")

#Changing point colors manually
ggplot(datasets,aes(x=wt,y=mpg,colour = cyl,shape=cyl))+
  geom_point()+
  geom_smooth(method=lm,se=FALSE,fullrange=TRUE)+
  scale_shape_manual(values = c(16,22,17))+
  scale_color_manual(values =c("darkblue","red","black"))+
  theme(legend.position = "top")
#Customizing scatter plots

ggplot(datasets,aes(x=wt,y=mpg,colour = cyl,shape=cyl))+
  geom_point()+
  geom_smooth(method=lm,se=FALSE,fullrange=TRUE)+
  scale_shape_manual(values = c(16,22,17))+
  scale_color_manual(values =c("darkblue","red","black"))+
 labs(title="miles per gallen according to the weight ")

ggplot(datasets,aes(x=wt,y=mpg,colour = cyl,shape=cyl))+
  geom_point()+
  geom_smooth(method=lm,se=FALSE,fullrange=TRUE)+
  scale_shape_manual(values = c(16,22,17))+
  scale_color_manual(values =c("darkblue","red","black"))+
  labs(title="miles per gallon\according to the weight ",x="weight",y="miles/gallon")



Customizing themes





plot=ggplot(datasets,aes(x=wt,y=mpg,colour = cyl,shape=cyl))+
  geom_point()+
  geom_smooth(method=lm,se=FALSE,fullrange=TRUE)+
  scale_shape_manual(values = c(16,22,17))+
  scale_color_manual(values =c("darkblue","red","black"))+
  labs(title="miles per gallon\according to the weight ",x="weight",y="miles/gallon")


plot+theme_classic()
plot+theme_minimal()








