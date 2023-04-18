#  1 )create a vector 23,69,101,150,32,69,18,22,23,161 
# a) The length of the vector 
x = c(23,69,101,150,32,69,18,22,23,161)
print(paste("The length of this vector is ",length(x)))

#b) mode of the vector
print(paste("mode of the vector is ", mode(x)))

#c)maximum and minimum elements of this vector
print(paste("the maximum elements of this vector is ",max(x)))
print(min(x))

#d) sum of all elements 
print(sum(x))

#e) print the 2nd , 6th and 9th elements together
print(x[c(2,6,9)])

#--------------------------------------------------------
# 2) Take the entries 23,42,21,62,44,101,19,21 as matrix entries (4 x 2 matrix)

# i) by row
A = matrix(c(23,42,21,62,44,101,19,21), nrow = 4 , ncol = 2, byrow=TRUE)
print(A)

# ii) by column
B = matrix(c(23,42,21,62,44,101,19,21), nrow = 4 , ncol = 2, byrow=FALSE)
print(B)

# iii) mode of the matrix
print(paste("the mode of the matrix is " , mode(A)))

# iv) length of the matrix 
print(paste("The length of the matrix is ", length(A)))

# v) Find transpose of the matrix
print(paste("The transpose of the matrix is"))
print(t(A))

#---------------------------------------------------------
#---------------------------------------------------------
#-----------------LISTS---------------#
n = c(2,3,5) #this is numeric type
s = c("aa", "bb", "cc", "dd", "ee") #character type
b  = c(TRUE, FALSE , TRUE, FALSE, FALSE) #LOGICAL TYPE
X = list(n , s , b , 3) # X cintains copies of n, s , b
print(X)

#list slicing
print(X[2]) #list second memeber of x 
#---------------------------------------------------------

print(X[c(2.4)]) 

#-----------------------------------------------------------

name = c("ABHI" , "SIDDU", "SUNNY")
ids = c(123,169,596)
logic = c(TRUE, FALSE, TRUE)

detail = list(name, ids, logic)
print(paste("The detail list is", detail))
print(paste("the detials of 2", detail[2]))

print(detail[[2]])
detail[[2]][2]=116 # we have edited the position in detail
print(detail)
print(detail[[2]])



