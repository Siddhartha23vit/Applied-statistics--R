#A car hire has two cars which it hires out day by day . the number of demands for a car on each day is distributed as a poisson distribution with mean 1.5 . calculate the proportion of days (i) on which there is no demand (ii) on which demand is refused.
# Set the mean demand per day
mean <- 1.5

P_nodemand <- dpois(0, mean)

prop_nd <- P_nodemand

p_exceed_demand <- ppois(2, mean)

prop_demand_refused <- p_exceed_demand - P_nodemand


#Answer for first (i)
cat("Proportion of days with no demand:", prop_nd, "\n")

#Answer for second (ii)
cat("Proportion of days with demand but no available cars:", prop_demand_refused, "\n")

#The above with formula 


#The probability that an individual suffers a bad reaction from an Injection is 0.001. Determine the probability that out of 2000 individuals (a) three (b) more than two willsuffer the reaction.

lambda <- 2000 * 0.001 
a1 <- dpois(3, lambda)
print("The proability out of three is")
print(a1)

#using fmula 

lambda <- 2000 * 0.001  
k <- 3  
a2 <- ((lambda ^ k) * exp(-lambda)) / factorial(k) 
print(paste("probability ou of three using forumula is", a2))

#ii
b2 <- 1 - ppois(2, lambda) 
print("The probabilty of more than two is:")
print(b2)
#using formula
lambda <- 2000 * 0.001  
prob_0 <- ((lambda ^ 0) * exp(-lambda)) / factorial(0)  
prob_1 <- ((lambda ^ 1) * exp(-lambda)) / factorial(1)  
prob_2 <- ((lambda ^ 2) * exp(-lambda)) / factorial(2)  
prob_more_than_2 <- 1 - (prob_0 + prob_1 + prob_2)  # Calculate probability of more than 2 individuals
prob_more_than_2  # Output the result



#Q: Assume a a ball from the driving range next door lands in your yard at an average
#rate of 3 balls per hour during the day. What is the probability that 10 or fewer golf
#balls will land in your yard during the afternoon, assuming the afternoon is 5 hours
#long?
#using inbuilt
lambda <- 15
x <- 0:10
p <- ppois(10, lambda)
print(paste("The probability is:" , p))

# forumula for above using formula
lambda1 <- 15
x1 <- 0:10
p1 <- sum((lambda1^x1 * exp(-lambda1)) / factorial(x1))
print(paste("The probability using the formula is", p1))
