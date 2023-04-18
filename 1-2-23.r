#Sukhavavasi Siddhartha
#21bce7782
#-------------LOOPS - (1/02/2023)-------------------#
#--FOR LOOP--#


print(paste("demo of for loop"))
i<-c(1:5)
for(n in i)
print(n*10)

#--WHILE LOOP( pre conditioned loop--#
even <- 0
print(paste("The while loop values for print is"))
while ( even<10)
{
    even <-even +2
    
    print(even)

    }

#  even%%2 ==0 , this means if the remainder is 0 affter divifing by 2 then the nmber is even 
even1<-2
if(even1%%2==0)
{print(even1)}

#-- Repeat loop (Post conditioned loop)--#
print(paste("demo of repeat loop"))
j<-1 #initialisation
repeat
{
    print(j)
    j<-j+1
    if(j>5)
    break
}

##--LAB WORK--#
#1) using while/ repeat loop print the odd numbers from 1 to 20 
print(paste("Odd numbers from 1 to 20 "))
odd<-1
repeat{
    if(odd%%2==1)
    print(odd)
    odd<-odd+1
    if(odd>20)
    break
}
print(paste("while loop odds"))
odd11<-1
n<-0
while(odd11<19)
{
    odd11<-2*n+1
    n<-n+1
    print(odd11)
}
#2) Using while/repeat loop, print the cubes of he numbers from 11 to 25 
print(paste("Cubes from 11 to 25"))
k <-11
repeat{
    cube<-k^3
    print(cube)
    k<-k+1
    if(k>25)
    break
}