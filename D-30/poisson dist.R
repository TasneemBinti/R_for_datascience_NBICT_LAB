ppois(q = 3,lambda = 5)
#Exactly 3 call ashar prob

ppois(q = 3,lambda = 5)-ppois(q = 2,lambda = 5)

dpois(x=3,lambda = 5)


n=seq(0,5)
n
r= dpois(x=n,lambda = 5)
barplot(r)

#visualize
library(visualize)
visualize.pois(stat = 4,lambda = 10,section = "upper")
visualize.pois(stat = c(4,6),lambda = 10,section = "bounded")
visualize.pois(stat = c(2,4),lambda = 5,section = "bounded")

#exactly 3 ta call ashar probality
visualize.pois(stat = c(3,3),lambda = 5,section = "bounded")
#2 tar kom ba charta besi houar prob koto
visualize.pois(stat = c(2,4),lambda = 5,section = "tails")
