#paired sample T test
#Importing the data set

myDataset=read.csv("paired-samples-t-test.csv")
# calculating the diff
diffs=myDataset$carb-myDataset$carb_protein

# If diffs are normally distributed
shapiro.test(diffs)


#checking outliers

boxplot(diffs)

#Running the paired T-test
t.test(x=myDataset$carb,y=myDataset$carb_protein,paired=TRUE)
#Running the wilcoxon signed rank test
wilcox.test(x=myDataset$carb,y=myDataset$carb_protein,paired=TRUE)


#calculating mean and sd
mean(myDataset$carb)
sd(myDataset$carb)

mean(myDataset$carb_protein)
sd(myDataset$carb_protein)

#Effect size calculation using cohen's d
#
install.packages("effsize")
library(effsize)

cohen.d(myDataset$carb_protein,myDataset$carb,paired=T)
#A paired sample t test was used to determine weather there was a statistically sig mean diff between the distance ran when
#participants imbibed a carbo-protein drink compared to
@a carb0-only drink. No outliers detected. The assumption of normality
#was not viollated, as aseessed by shipiro-wilk test(p=0.780). Participants ran further when imbibing the carbo-protein drink(mean=0.713km)as opposed to the carbohydrate only drink(mean=11.67km, sd=7.26km), a 
#statistially sig mean increase 0.135km, 95% CI{0.0091,0.181}, t(19)=6.352,p<=0.001, Cohen's d
# estimate: 0.186634