#creating a data frame
dataset=data.frame(dose=c("D0.5","D1","D2"),len=c(4.2,10,29.5))
library(ggplot2)

#basic barplot
ggplot(data = dataset,aes(x=dose,y=len))+
  geom_bar(stat="identity")

#Horizontal bar plot
ggplot(data = dataset,aes(x=dose,y=len))+
  geom_bar(stat="identity")+
  coord_flip()
#changing the width of bars
ggplot(data = dataset,aes(x=dose,y=len))+
  geom_bar(stat="identity",width=0.5)
#Changing color
ggplot(data = dataset,aes(x=dose,y=len))+
  geom_bar(stat="identity",color="blue",fill="white",width=0.5)

#Minimal color with blue fill color
ggplot(data = dataset,aes(x=dose,y=len))+
  geom_bar(stat="identity",,fill="steelblue")+
  theme_minimal()
ggplot(data = dataset,aes(x=dose,y=len))+
  geom_bar(stat="identity",,fill="steelblue")+
  theme_classic()
#Adding lebel into barpot
#outside
ggplot(data = dataset,aes(x=dose,y=len))+
  geom_bar(stat="identity",,fill="steelblue")+
  theme_classic()+
  geom_text(aes(label=len),vjust=-0.2,size=2.5,color="#300822")
#Inside
ggplot(data = dataset,aes(x=dose,y=len))+
  geom_bar(stat="identity",,fill="steelblue")+
  theme_classic()+
  geom_text(aes(label=len),vjust=3,size=2.5,color="#FFFFFF")

myCarData=mtcars
view(myCarData)
#barplot of counts
#to make a barplot of counts, we will use mtcars data set
ggplot(data=myCarData,aes(x=factor(cyl)))+
  geom_bar(stat="count",width=0.7,fill="steelblue")+
  theme_minimal()











