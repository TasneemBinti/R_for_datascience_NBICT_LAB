#Explaining rbinom()
#rbinom(n,size, prob) generate random numbers from a binomial distribution
Here:
  #n: Number of random values to generate
#size: Number of trails in each binomial experiment
#prob: Probability of success in each trial

rbinom(n=10,size=5,prob=0.5)
#10=number of random values to generate
#1= number of trails in each binomial experiment
#0.5=Probability of success in each trial
rbinom(n=10,size=5,prob=0.5)
rbinom(n=10,size=1,prob=0.5)

#Explaining pbinom()
#pbinom()gives the cumulative probablity of getting q or fwer successes
#in a binimoial distribution

#Syntax: pbinom(q,size,prob)
#Here:
#q=the number of successes
#size=no of trials
#prob:probabilty of success in each trial

pbinom(q=5,size=10,prob=0.5)
#The result means theres about 62% chance of getting 5 or fewer sucesses
#in 10 trials(eg. getting 5 or fewer heads in 10 fair coin tosses)
#you toss a coin 5 times, prob of geeting head exactly 3 times
pbinom(q=3,size=5,prob = 0.5)- pbinom(q=2,size=5,prob = 0.5)

#Explianing qbinom()
#what is the smallest number of sucessess  in 10 trials
#with 50% success chance, such that the probability of getting x or fewer sucess is at least 30%

qbinom(p=.30,size = 10,prob=0.5)
#p=0.3= cumulative probabilty
#size+ 10+number of trials(eg. 10 coin tosses)
#prob=0.5= probabilty of success

#explaining dbinom()
Clculating the probabiity of getting exact no of sucess
dbinom(x=3,size=5,prob=0.5)
dbinom(x=3,size=10,prob=0.25)
#dbinom(x,size,prob)
#x=3=numer of success you want
#size=5=number of independent trial
#prob=0.25=probabilty of success







