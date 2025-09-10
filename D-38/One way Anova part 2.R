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

# Tukey test: post hoc 


TukeyHSD(anova)

#Assumptions Testing
#Homogeneity of variances
#Process 1: plotting
plot(anova,1)

#Process 2: levenese test

library(car)

leveneTest(weight~group,data=PlantGrowth)


#Anovatest with no assumption of equal variances-welch test
oneway.test(weight~group,data=PlantGrowth)

##Pairwise t test with no assumption of equal variances

pairwise.t.test(PlantGrowth$weight,PlantGrowth$group,
                p.adjust.method = "BH",pool.sd = FALSE)



#Checking for normal distribution
#Process: 1-plot
plot(anova,2)

#Process 2: Shapiro wilk

#Extracting Residuals for the shapiro test
aov_res=residuals(object=anova)
aov_res
shapiro.test(aov_res)



