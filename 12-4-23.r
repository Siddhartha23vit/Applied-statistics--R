#Liner Model Fitting
#lm(fitting_formula, dataframe)

#example:
df=data.frame(x=c(1,2,3,4,5), y=c(1,5,8,15,26))
#fit linear model 
linear_model= lm(y~x, data=df)
linear_model

#view summary of linear model 
summary(linear_model)

#1. given x = normal stress and y = shear resistance , make a data frame of it

a<-c(26.8,25.4,28.9,23.6,27.7,23.9,24.7,28.1,26.9,27.4,22.6,25.6)
b<-c(26.5,27.3,24.2,27.1,23.6,25.9,26.3,22.5,21.7,21.4,25.8,24.9)
df<-data.frame(a,b)
print (df)
linear_m1=lm(b~a,data=df)
print(linear_m1)

#using formula theory 
n=12
n1=sum(a)
n2=sum(b)
n3=sum(a*b)
n4=sum(a^2)

slope_m=(((n*n3)-n1*n2)/((n*n4)-(n1^2)))
print(slope_m)

y_intercept = (n2 - slope_m*(n1))/n
print(y_intercept)

#(A) Estimate shear resistance for a normal steress of 24.5

#b = slope_m*a + y_intercept
Shear_resistance = slope_m*24.5 + y_intercept
print(Shear_resistance)

#(b)Plot the data; does it appear that a simple linear
# regression will be a suitable model?

plot(a, b, xlab="Normal Stress", ylab="Shear Resistance", main="Scatterplot of Normal Stress and Shear Resistance")
abline(y_intercept,slope_m, col='Red')


#------------------------------------------------#

#Question 2 :
#The data on incomes and food expenditures of the seven households
#given in the following table
#let a1 be income nd b1 be food expenditure
income<-c(55,83,38,61,33,49,67)
expenditure<-c(14,24,13,16,9,15,17)
df1 <- data.frame(income,expenditure)
print(df1)

Linear_model1=lm(expenditure~income,data<-df1)
print(Linear_model1)

#using formula
num=7
num1=sum(income)
num2=sum(expenditure)
num3=sum(income*expenditure)
num4=sum(income^2)

slope_m1=(((num*num3)-(num1*num2))/((num*num4)-((num1)^2)))
print(slope_m1)

y_intercept1= ((num2)-slope_m1*(num1))/num
print(y_intercept1)

expenditure1 = slope_m1*59 + y_intercept1
print(expenditure1)

plot(income, expenditure, xlab="Income", ylab="Expenditure", main="Scatterplot of income and expenditure of seven house holdsṇ")

abline(y_intercept1, slope_m1, col="red")

