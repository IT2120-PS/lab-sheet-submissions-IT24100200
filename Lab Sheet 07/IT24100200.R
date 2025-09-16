setwd("C:\\Users\\Hesara\\Desktop\\IT24100200")

#Question 01
#Uniform Distribution
#Uniform distribution with a=0 and b=30

#Probability that the bus arrives within the first 10 minutes
punif(10,min = 0, max = 30, lower.tail = TRUE)

#What is the probability that the bus arrives after 7:20 a.m.?
#P(X>20) = 1 - P(P<=20)
1 - punif(20, min = 0, max = 30, lower.tail = TRUE)

#Or we can find directly P(X>20) by keeping argument "lower.tail" as "FALSE"
punif(20, min = 0, max = 30, lower.tail = FALSE)

#Question 02
#Exponential Distribution
#lambda = 0.5

#Probability that a repair time takes at most 3 hours
#P(X<=3)
pexp(3,rate = 0.5,lower.tail = TRUE)

#Probability that a repair time exceeds 4 hours.
#P(X>4)
pexp(4,rate = 0.5,lower.tail = FALSE)

#Or

1 - pexp(4,rate = 0.5,lower.tail = TRUE)

#Probability that a repair time takes between 2 to 4 hours.
#P(2<X<4) = P(X<=4) - P(X<=2)
pexp(4,rate = 0.5,lower.tail = TRUE) - pexp(2,rate = 0.5,lower.tail = TRUE)

#Question 03
#Normal Distribution
#Mean = 36.8, SD = 0.4

#A hospital uses 37.9C◦ as the lowest temperature considered to be a fever. What is the probability that randomly selected person would have a fever?
#P(X>=37.9) = 1 - P(X<37.9)
#P(X<37.9) = P(X<=37.9)
1 - pnorm(37.9,mean = 36.8,sd = 0.4,lower.tail =TRUE)

#What is the probability that a randomly selected person would have a temperature between 36.4C◦ and 36.9C◦ ?
#P(36.4<X<36.9) = P(X<=36.9) - P(X<=36.4)
pnorm(36.9,mean = 36.8,sd = 0.4, lower.tail = TRUE) - pnorm(36.4,mean = 36.8, sd = 0.4,lower.tail = TRUE)

#Physicians want to decide the "maximum" temperature which is needed for further medical tests. What should be that temperature, if they want only 1.2% of the people to fall below it?
#P(X<a) = 1.2% = 0.012
qnorm(0.012,mean = 36.8,sd = 0.4,lower.tail = TRUE)

#Physicians want to decide the minimum temperature which is needed for further medical tests. What should be that temperature, if they want only 1.0% of the people to fall above it?
#P(X>a) = 1% = 0.01
qnorm(0.01,mean = 36.8,sd = 0.4,lower.tail = FALSE)

#Exercise
#Question 01
#Uniform distribution with a=0 and b=40
#P(10<=X<=25) = P(X<=25) - P(X<=10)
punif(25,min = 0,max = 40,lower.tail = TRUE) - punif(10,min = 0,max = 40,lower.tail = TRUE)

#Question 02
#Exponential Distribution
#lambda = 0.33
#P(X<=2)
pexp(2,rate = 0.33,lower.tail = TRUE)

#Question 03
#Normal Distribution
#Mean = 100, SD = 15
#P(X>130) = P(X>=130) = 1 - P(X<130) = 1 - P(X<=130)
1 - pnorm(130,mean = 100,sd = 15,lower.tail = TRUE)

#Or
pnorm(130,mean = 100,sd = 15,lower.tail = FALSE)

#P(X<a) = 95% = 0.95 (value below which 95% of data lie (value below which 95% of data lie))
qnorm(0.95,mean = 100,sd = 15,lower.tail = TRUE)
