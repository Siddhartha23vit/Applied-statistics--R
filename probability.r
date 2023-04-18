#Assume a coin is weighted so that it comes up heads 60% of the time. What is the probability that you will obtain 25 or more heads after 50 flips.
a <- 25
b <- 0.6
c <- 50
sol<- 1 - pbinom(24, 50, 0.6)
print(c("The probability is: ", sol))

# Suppose widgits produced at ACME widgit work have probability 0.005 of being defective. Suppose widgits are shipped in cartoons containing 25 widgits.  What is the probability that a randomly chosen cartoon contains exactly one defective widgit?

a1 <- 0.005
b1 <- 1
c1 <- 25
sol1 <- dbinom(1, 25, 0.005)
print(c("The probability is: ", sol1))

# If 10% of the screws produced by an automatic machine are defective, find the probability  that out of 20 screws selected at random, there are: 

# i) exactly 2 defective

a2 <- 0.1
b2 <- 2
c2 <- 20
sol2a <- dbinom(2, 20, 0.1)
print(c("The probability is: ", sol2a))

# ii) At least 2 defectives

sol2b <- 1 - dbinom(1, 20, 0.1)
print(c("The probability is: ", sol2b))

# iii) Between 1 and 3 defectives

sol2c <- pbinom(3, 20, 0.1)
print(c("The probability is: ", sol2c))