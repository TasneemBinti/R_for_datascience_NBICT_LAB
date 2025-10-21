#Importing the data sets:
 housetasks=read.delim("housetasks.txt",row.names = 1) 

  #Visualizing contingency table
# Contingency table can be visualized using the function balloonplot
 #This function draws a graphical matrix whrere each cell contains
 #a dot whose size reflects the relative magnitude of the corresponding component.
 
 
 install.packages("gplots")
library("gplots") 
dt=as.table(as.matrix(housetasks)) 

balloonplot(t(dt))
# to decorate the plot
balloonplot(t(dt),main="Housetasks Visualization",label=F,show.margines=F,
            xlab='',ylab = "")
#Its also possible to visualize a contingency table as a mosaic plot
#this can be done using the function mosaic plot() from the built in R package graphics

library("graphics")
mosaicplot(dt,shade=T,las = 2,
           main="Housetasks")
#vlue clor indicates that the observed value is higher than
#the expected value, red clr indicates that observed value is higher than
#the expected value


#computing chi-square test in R

chisq=chisq.test(housetasks)
chisq
#observed counts
chisq$observed
#Expected counts

chisq$expected
 roundind(How many no. after decimal)
 round(chisq$expected,2)

