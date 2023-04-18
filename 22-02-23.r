#visual representation of sata

marks <- c(23,56,20,63,99)
labels<- c("Ram", "Mihan","Kabir","Maria","josh")
pie(marks, labels, main = "Marks obtained in examination", col = "green")

#or
pie(marks, labels, main = "Marks obtained in examination", col = rainbow(length(marks)))

#newspapers sold IN 7 DAYS OD 1ST WEEK FOR FEB 2023 (TOI)
A<-c(17,22,20,15,10,5,13)
B<-c("Mon","Tue","Wed","Thurs","Fri","Sat","Sun")
barplot(A,xlab = "Days", ylab= "Newspapers", main = "Total Newspapers sold (TOI)", names.arg=B, col = rainbow(length(A)))

#Q1. draw a barplot displaying thr average rainfall in (Cm) of guwahati(Assam) for the months of May, June, July, August and spetember 2022

#Q2. Draw a histogram showing the marks obtained (out of ) by 15 studnets in the cat 1 examination of applies stats course

#Q3. using plot() fucntion show the marks obtained by a student in FAT examination for 6 differnt subjects

#ANSWER 2 
marks1 <- c(21,22,23,14,35,26,34,7,38,29,40,1,32,43,44)

hist(marks1,xlab="marks",ylab="number of studnets", col = "yellow", border= "red", xlim= c(0,50), ylim = c(0,15), breaks = 5)

#ANSWER 1 
avg.rainfall <- c(100,55,36,55)
month<-c("May","June","July","August")
barplot(avg.rainfall, main = "Average Rainfall of Guwahati (Assam)",
xlab = "average rainfall(in cm)",
ylab = "Month",
names.arg =month,
col = "darkred",
horiz = TRUE)

#answer 3
x <- c(1, 2, 3, 4, 5,6)
y <- c(30, 45, 47, 23, 50,3)

plot(x, y, main="FAT marks", xlab = "names of students", ylab = "marks of students" , col ="red")
