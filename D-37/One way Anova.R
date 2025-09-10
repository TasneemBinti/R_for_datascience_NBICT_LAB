#one way Anova
#Importing the dataset
plantgrowth= PlantGrowth

#Importing the deplyr library
library(dplyr)
#computing the group mean, sd, se
stats=plantgrowth%>% 
  group_by(group)%>%
  summarise(
    mean=mean(weight),
            sd=sd(weight),
            se=sd(weight)/sqrt(n()))
print(stats)

#creating group wise boxplot
boxplot(weight ~ group, data = PlantGrowth, main = "PlantGrowth data",
        ylab = "Dried weight of plants", col = "lightgray",
        notch = TRUE, varwidth = TRUE)
boxplot(weight ~ group, data = PlantGrowth, main = "PlantGrowth data",
        ylab = "Dried weight of plants", col = "lightgray")
# visualizing data using Meanplot
install.packages("ggpubr")
library(ggpubr)
ggline(PlantGrowth,
       x="group",
       y="weight",
       add=c("mean_se","jitter"))
#Running one way Anova
anova=aov(weight~ group,data=plantgrowth)

summary(anova)

