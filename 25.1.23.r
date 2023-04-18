#enter the resgistration number , names ,maeks of cat1 and cat2 examinations of 10 students in a class in terms of lists.
# then print 
#a. names of students with cat 2 marks only 
#b) the maximum an dminimum marks obtained in cat1 examination 
regnum=c(7782,7783,7784,7785,7786,7787,7788,7789,7790,7791)
name = c("Sid1","sid2","sid3","sid4","sid5","sid6","sid7","sid8","sid9","sid10" )
Cat1 = c(23,24,25,26,27,28,29,30,31,32)
Cat2 = c(33,34,35,36,37,38,39,40,41,42)

detail1 = list(name, Cat2)
print(detail1)
print("minimum marksi n cat1")
print(min(Cat1))
print("The maximim marks in cat2")
print(max(Cat1))

#---------------------DATA FRAME------------------------#
dataframe = data.frame( regnum, name, Cat1)
print(dataframe)
print(dataframe[2])
print(dataframe$name)
