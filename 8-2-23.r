# Find mean and median 
#1. Find the  mean and median for : 
# x|20|30|40|50|60|70|80|
# y|5 |3 |1 | 2| 3| 2|1 |

x <- c(20,30,40,50,60,70,80)
f <- c(5,3,1,2,3,2,1)
y <- rep(x,f)
mean <- (sum(y))/(length(y)) 
print(mean)

print(median(y))

#2) compute mean , median and mode 
mid <- seq(147.5,182.5,5)
print(mid)
f<- c(4,6,28,58,64,30,5,5)
fr.distr<-data.frame(mid,f)
print(fr.distr)
#mean
mean<-(sum(mid*f))/sum(f)
print(mean)

#median
midx<-seq(147.5,182.5,5)
frequency<-c(4,6,28,58,64,30,5,5)
fr.dist<-data.frame(midx,frequency)
print(fr.dist)

cl<- cumsum(frequency)
print(cl)

n<-sum(frequency)
print(n)

ml <- min(which(cl>=n/2))
print(ml)

h=5
print(h)

f=frequency[ml]
print(f)

c<- cl[ml-1]
print(c)

l <- mid[ml]-h/2
print(l)

median = l+(((n/2)-c)/f)*h
print(median)

#MODE
m <- which(frequency==max(frequency))
print(m)

fm <- frequency[m]
print(fm)

f1 <- frequency[m-1]
f2<-frequency[m+1]
print(f1)
print(f2)

l=midx[m]-h/2
print(l)

mode = l+((fm-f1)/(2*fm-f1-f2))*h
print(mode)