#rnom- random normal
rnorm(10)
x=rnorm(10)
mean(x)
sd(x)
y=rnorm(10000)
mean(y)
sd(y)
z=rnorm(10,mean=100,sd=5)
z
mean(z)
sd(z)

#pnorm
p value calculate korar jnno use hoy
#At z=0, then the value of probality 0.5
pnorm(0)
pnorm(-3)
pnorm(0.12)
pnorm(-2)
#qnorm
qnorm(0.5)
qnorm(0.05)

#dnorm
Y axis value for z=0

dnorm(0)

#Lets use dnorm to draw the normal distribution
zvalue=seq(-4.0, 4.0,by=0.1)

zvalue

dvalues=dnorm(zvalue)

#plot using d and z values
plot(zvalue,dvalues)

