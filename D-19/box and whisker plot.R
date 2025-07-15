#loading the dataset
my_data=ToothGrowth
#converting the dose column from numeric into factor
my_data$dose=as.factor(my_data$dose)
class(my_data$dose)
library(ggplot2)
#basic boxplot
ggplot(my_data,aes(x=dose, y=len))+
  geom_boxplot()
#rotating the box plot
ggplot(my_data,aes(x=dose, y=len))+
  geom_boxplot()+
  coord_flip()
#notched box plot
ggplot(my_data,aes(x=dose, y=len))+
  geom_boxplot(notch=T)
#changing outlier color, shape and size

ggplot(my_data,aes(x=dose, y=len))+
  geom_boxplot(outlier.color = "red",outlier.shape = 8,
               outlier.size =3 )
#Choosing which item to display
ggplot(my_data,aes(x=dose,y=len))+geom_boxplot(outlier.color = "red",outlier.shape = 8,
                                              outlier.size =3 )+
  scale_x_discrete(limits=c("2"))
#changing box plot line colors by groups

ggplot(my_data,aes(x=dose, y=len,color=dose))+
  geom_boxplot()
#changing the item order

ggplot(my_data,aes(x=dose, y=len,color=dose))+
  geom_boxplot()+
  scale_x_discrete(limit=c("2","1","0.5"))

#Boxplot with multiple grps

ggplot(my_data,aes(x=dose, y=len,fill = supp))+
  geom_boxplot()

# changing the ditances between two box

ggplot(my_data,aes(x=dose, y=len,fill = supp))+
  geom_boxplot(position = position_dodge(1))


