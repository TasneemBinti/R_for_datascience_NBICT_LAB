dataset=read.csv('polynom_data.csv')
attach(dataset)
#plot the data

plot(x,y,main="polynomial Regression Example",pch=19)
poly_mod=lm(y~poly(x,2,raw=TRUE))
summary(poly_mod)
