# Installing package 
install.packages(c("tidyverse","car","emmeans","effectsize","performance","broom","kableExtra"))
library(tidyverse)
#importing the dataset

d=read.csv("cropdata.csv")


#Descriptive analysis
summs=d%>%
  group_by(fert,irr)%>%
  summarise(mean=mean(y),se=sd(y)/sqrt(n()),.groups = "drop")

view(summs)

#Quick viualization of summary
library(ggplot2)
ggplot(summs, aes(irr, mean, group = fert))+
  geom_line() +
  geom_point(size = 2) +
  geom_errorbar(aes(ymin=mean-se, ymax=mean+se), width = .2)+
  facet_wrap(~fert, nrow = 1) +
  labs(x="Irrigation", y="Mean yield",
       title="Interaction of Fertilizer x Irrigation") +
  theme_classic(base_size = 12)


# Fit the model
m=aov(y~fert+irr+fert*irr,data=d)
summary(m)


#Assumptions visual check
par(mfrow=c(2,2))
plot(m)

#Shapiro wilk on residual(normality)

res=residuals(m)
shapiro.test(res)

#lavenes test
library(car)
leveneTest(y~fert*irr,data=d,center=median)

#Interaction contrasts/post hoc-simple effect

#Effect of fert at each level of irr
library(emmeans)
contrast(emmeans(m,~fert|irr),method="pairwise",adjust="tukey")

#Effect of irr at each level of fert
contrast(emmeans(m,~irr|fert),method="pairwise",adjust="tukey")

#Main effect comparison only if interaction is negligible)

contrast(emmeans(m,~fert),method="tukey")


contrast(emmeans(m,~irr),method="tukey")


# CLD letters
library(multcomp)
# install.packages("multcompView")
library(multcompView)
group_letters <- cld(emmeans(m, ~ fert * irr), Letters = letters)
print(group_letters)


