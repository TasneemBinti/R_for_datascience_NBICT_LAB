library(ggplot2)
dtasets=mtcars
datasets=mtcars
View(datasets)

#generating a basic scatter plot

ggplot(datasets,aes(x=wt,y=mpg)) +
  geom_point()

#Changing the point size as shape
ggplot(datasets,aes(x=wt,y=mpg)) +
  geom_point  (size=2,shape=6) 

#Adding th regression line

ggplot(datasets,aes(x=wt,y=mpg)) +
  geom_point  (size=2,shape=12) +
  geom_smooth(method=lm)

#removing the confidence interval

ggplot(datasets,aes(x=wt,y=mpg)) +
  geom_point  (size=2,shape=12) +
  geom_smooth(method=lm,se=FALSE)

#Loess Method

ggplot(datasets,aes(x=wt,y=mpg)) +
  geom_point  (size=2,shape=12) +
  geom_smooth()
#change the line type and color

ggplot(datasets,aes(x=wt,y=mpg)) +
  geom_point  (size=2,shape=12) +
  geom_smooth(method=lm,linetype ='dotted')
#Adding clr
ggplot(datasets,aes(x=wt,y=mpg)) +
  geom_point  (size=2,shape=12) +
  geom_smooth(method=lm,linetype ='dotted',color="red")
#changing the confidence interval color
ggplot(datasets,aes(x=wt,y=mpg)) +
  geom_point  (size=2,shape=12) +
  geom_smooth(method=lm,linetype ='dotted',color="red",fill="green")

#scatter plot with multiple groups


datasets$cyl
#converting the cyl column from a numeric to factor variable
datasets$cyl=as.factor(datasets$cyl)

#changing the point shape by the levels of cyl
ggplot(datasets,aes(x=wt,y=mpg,shape=cyl))+
  geom_point()
#changing point shapes and colors

ggplot(datasets,aes(x=wt,y=mpg,shape=cyl,color=cyl))+
  geom_point()
  #changing point shapes:colors and sizes

ggplot(datasets,aes(x=wt,y=mpg,shape=cyl,color=cyl,size=cyl))+
  geom_point()
ggplot(datasets,aes(x=wt,y=mpg,color=cyl,size=cyl))+
  geom_point()
