setwd("C:\\Users\\Hesara\\Desktop\\IT24100200")

#Exercise
#1
#i
x <- rnorm(25,mean = 45, sd = 2)
x

#ii
t.test(x, mu=46, alternative = "less")