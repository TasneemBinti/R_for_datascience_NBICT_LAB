# Demonstration of CLT

#Generate 10K numbers of uniform distribution
r=runif(10000)
hist(r)
x=mean(r)
r
x
y=sd(r)
y
#Draw three random sample from the distribution
Sample1=sample(r,4)
Sample2=sample(r,4)
Sample3=sample(r,4)

mean(Sample1)
mean(Sample2)
mean(Sample3)

#Run a for loop
cl4=mean(sample(r,4))
for(i in 1:999){
  cl4=c(cl4,mean(sample(r,4)))
}

cl10
hist(cl10)


