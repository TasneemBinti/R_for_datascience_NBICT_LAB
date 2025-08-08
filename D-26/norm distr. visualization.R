#installing the visualize package
install.packages('visualize')
library("visualize")

#visualize normal distrubution
pnorm(-1.96)
visualize.norm(-1.96)
visualize.norm(1.96)

#right tail highlight
visualize.norm(1.96, section="upper")

visualize.norm(stat=c(-1.96,1.96),section="bounded")
visualize.norm(stat=c(-1.96,1.96),section="tails")
visualize.norm(stat=c(-1,1),section="bounded")
visualize.norm(stat=c(-3,3),section="bounded")
visualize.norm(stat=c(-3,3),section="tails")

#right tail probability
1-pnorm(2)
visualize.norm(stat=77,mu=75,sd=1,section="upper")
visualize.norm(stat=77,mu=75,sd=1,section="lower")

#pnorm (z value)

pnorm(77,mean=75,sd=1)...........left tail
1-pnorm(77,mean=75,sd=1)............right tail



