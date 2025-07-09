#stylingpots for publication

library(ggplot2)
# installing and loading packeges

install.packages("ggthemes")
library(ggthemes)
install.packages("viridis")
library(viridis)

#sample data loading
df=mtcars

#crating plot for mpg and wt of the taken data set
#mkaing cyl factor
df$cyl=as.factor(df$cyl)

#styling plot
ggplot(df,aes(x=wt,y=mpg,color=cyl))+
  geom_point(size=3)
# writing cylinder instead of cyl
ggplot(df,aes(x=wt,y=mpg,color=cyl))+
  geom_point(size=3)+
  scale_color_viridis_d(name="Cylinders")
#mpg and wt full form
ggplot(df,aes(x=wt,y=mpg,color=cyl))+
  geom_point(size=3)+
  scale_color_viridis_d(name="Cylinders")+
  labs(title="Fuel Effienciency by Car Weight",x="Weight(1000lbs)",y="Miles per Gallon")
#changing theme and controlling things for publication
ggplot(df,aes(x=wt,y=mpg,color=cyl))+
  geom_point(size=3)+
  scale_color_viridis_d(name="Cylinders")+
  labs(title="Fuel Effienciency by Car Weight",x="Weight(1000lbs)",y="Miles per Gallon")+
  theme_classic()
#controlling base size
ggplot(df,aes(x=wt,y=mpg,color=cyl))+
  geom_point(size=3)+
  scale_color_viridis_d(name="Cylinders")+
  labs(title="Fuel Effienciency by Car Weight",x="Weight(1000lbs)",y="Miles per Gallon")+
  theme_classic(base_size = 5)
#serif font
ggplot(df,aes(x=wt,y=mpg,color=cyl))+
  geom_point(size=3)+
  scale_color_viridis_d(name="Cylinders")+
  labs(title="Fuel Effienciency by Car Weight",x="Weight(1000lbs)",y="Miles per Gallon")+
  theme_classic(base_size = 14,base_family="serif")

ggplot(df,aes(x=wt,y=mpg,color=cyl))+
  geom_point(size=3)+
  scale_color_viridis_d(name="Cylinders")+
  labs(title="Fuel Effienciency by Car Weight",x="Weight(1000lbs)",y="Miles per Gallon")+
  theme_classic(base_size = 14,base_family="serif")+
  theme(plot.title = element_text(face="bold",size=20))

#Title allignment
ggplot(df,aes(x=wt,y=mpg,color=cyl))+
  geom_point(size=3)+
  scale_color_viridis_d(name="Cylinders")+
  labs(title="Fuel Effienciency by Car Weight",x="Weight(1000lbs)",y="Miles per Gallon")+
  theme_classic(base_size = 14,base_family="serif")+
  theme(plot.title = element_text(face="bold",size=20,hjust=0.5))
#Axis Tilte modification
ggplot(df,aes(x=wt,y=mpg,color=cyl))+
  geom_point(size=3)+
  scale_color_viridis_d(name="Cylinders")+
  labs(title="Fuel Effienciency by Car Weight",x="Weight(1000lbs)",y="Miles per Gallon")+
  theme_classic(base_size = 14,base_family="serif")+
  theme(plot.title = element_text(face="bold",size=20,hjust=0.5),
        axis.title=element_text(face="bold",size=14))

#axis text (values) modificatio

ggplot(df,aes(x=wt,y=mpg,color=cyl))+
  geom_point(size=3)+
  scale_color_viridis_d(name="Cylinders")+
  labs(title="Fuel Effienciency by Car Weight",x="Weight(1000lbs)",y="Miles per Gallon")+
  theme_classic(base_size = 14,base_family="serif")+
  theme(plot.title = element_text(face="bold",size=20,hjust=0.5),
        axis.title=element_text(face="bold",size=14),
        axis.text = element_text(size=10))
#legend positioning:
ggplot(df,aes(x=wt,y=mpg,color=cyl))+
  geom_point(size=3)+
  scale_color_viridis_d(name="Cylinders")+
  labs(title="Fuel Effienciency by Car Weight",x="Weight(1000lbs)",y="Miles per Gallon")+
  theme_classic(base_size = 14,base_family="serif")+
  theme(plot.title = element_text(face="bold",size=20,hjust=0.5),
        axis.title=element_text(face="bold",size=14),
        axis.text = element_text(size=10),
        legend.position = "right")
# legend title modification
ggplot(df,aes(x=wt,y=mpg,color=cyl))+
  geom_point(size=3)+
  scale_color_viridis_d(name="Cylinders")+
  labs(title="Fuel Effienciency by Car Weight",x="Weight(1000lbs)",y="Miles per Gallon")+
  theme_classic(base_size = 14,base_family="serif")+
  theme(plot.title = element_text(face="bold",size=20,hjust=0.5),
        axis.title=element_text(face="bold",size=14),
        axis.text = element_text(size=10),
        legend.position = "right",
        legend.title = element_text(face="bold",
                                    legend.text=element_text(size = 20))
        
#export plot by coding
p=plot(df,aes(x=wt,y=mpg,color=cyl))+
  geom_point(size=3)+
  scale_color_viridis_d(name="Cylinders")+
  labs(title="Fuel Effienciency by Car Weight",x="Weight(1000lbs)",y="Miles per Gallon")+
  theme_classic(base_size = 14,base_family="serif")+
  theme(plot.title = element_text(face="bold",size=20,hjust=0.5),
        axis.title=element_text(face="bold",size=14),
        axis.text = element_text(size=10),
        legend.position = "right",
        legend.title = element_text(face="bold")
ggsave("publication_ggplot.png",p,width=6,height=4,)

