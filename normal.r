# Sample Question Q: Assume a random variable Z is distributed according to the normal distribution
#with mean 6 and standard deviation 4. What is the probability that Z takes on a
#value between -1 and 3 ?

#solution
pnorm(3,6,4)-pnorm(-1,6,4)


#Q1
#1. A soft-drink machine is regulated so that it dis- charges an average of 200 milliliters per cup. If the amount of drink is normally distributed with a stan- dard deviation equal to 15 milliliters,
#(a) what fraction of the cups will contain more than 224 milliliters?
#(b) what is the probability that a cup contains between 191 and 209 milliliters?

mu <- 200
sd<-15
#(i)
z <- (224 - mu)/sd


#we have to find area 

area_right <- 1- pnorm(z)
cat("The probability is", area_right, "\n")


#b Probability that a cup contains between 191 and 209 ml 
#step one , find the z value of 191 and 209ml and then find their area lefr and subtract the al of 191ml 
#from the area left of 209ml to accurately get the area between them which is the probablityu of the cup we need

z1 <- (209-mu)/sd
z2 <- (191 -mu)/sd

#area left of 209ml is 
cat("Area left of z1",pnorm(z1),"\n")
#area left of 191ml iis
cat("area left of z2 is:",pnorm(z2),"\n")

#now, the area we need is gievn by 
area_cup <- pnorm(z1) - pnorm(z2)

cat("Probability that cup contains between 191 and 209ml is", area_cup, "\n")

#------------------------------------------------------------#

#Q2) 
#The loaves of rye bread distributed to local stores by a certain bakery have an average length of 30 centimeters and a standard deviation of 2 centimeters. Assuming that the lengths are normally distributed, what percentage of the loaves are
#(a) longer than 31.7 centimeters?
#(b) between 29.3 and 33.5 centimeters in length?
#(c) shorter than 25.5 centimeters?

#given
mean_rye <- 30
sd_rye <- 2

#(a) 
#to find rye thats longer thabb 31.5 cm we first find the z value of 31.7cm rye

z_31.7 <- (31.7 - 30)/sd_rye
cat("z-val of 31.7cm rye is :", z_31.7, "\n")

cat("the percentage of rye longer than 31.7cm is" , ((1-pnorm(31.7,30,2))*100),"\n")

#(b) between 29.3 and 33.5cm in length

z_29.3 <- (29.3-mean_rye)/sd_rye
z_33.5 <- (33.5 - mean_rye)/sd_rye

#now to find the percentage, we first fidn the area left of both 29.3 and 33.5 and subtRACT
#the former from the latter

cat("The area left of 29.3 rye is ", pnorm(z_29.3),"\n")
cat("The area left of 33.5 rye is ", pnorm(z_33.5), "\n")

cat("The perentage of loaves between 29.3 and 33.5cm is ", (pnorm(z_33.5)-pnorm(z_29.3))*100 ,"\n")

#(c) the percentage of loaves shorter than 25.5 cm 

z_25.5 <- (25.5-mean_rye)/sd_rye
cat("z value of loaves at 25.5cm is ", z_25.5, "\n")

cat("The percentage of loaves shorter than 25.5 cm is ", pnorm(z_25.5)*100, "\n")


# (Q3) IQ is a normal distribution of mean of 100 and standard deviation of 15
#a) What percentage of people have an IQ<125?
#b) What percentage of people have IQ>110?
#c) What percentage of people have 110<IQ<125?

#given 
mean_iq <- 100
sd_iq <- 15

#(i) what percent of people have an iq < 125

z_125 <- ( 125- mean_iq)/sd_iq
cat("z_value of 125 iq is", z_125, "\n")
cat("The percentage of people with iq <125 is", pnorm(z_125)*100, "\n")

#(ii) 
z_110 <-  (110 - mean_iq)/sd_iq
cat("The percentage of people have iq>110 is", (1-pnorm(z_110))*100, "\n")

#(iii) 
cat("The percentage between 110 and 125 is", ((pnorm(z_125)-pnorm(z_110))*100), "\n")