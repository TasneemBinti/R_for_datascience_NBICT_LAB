#install.packages("ggplot2")
library(ggplot2)
dtasets=mtcars
datasets=mtcars
View(datasets)
 
#generating a basic scatter plot
ggplot(datasets,aes(x=wt,y=mpg)) +
  geom_point()
#Changing the point size as shape
ggplot(datasets,aes(x=wt,y=mpg)) +
  geom_point  (size=2,shape=20) 
