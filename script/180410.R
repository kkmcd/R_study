example(mean)

1:5
5:1

x<-c(1,2,3)
y<-c(4,5,c(6,7,8))

seq(from=1,to=5,by=2)
seq(1,5,by=2)
seq(0,1,by=0.001)
seq(0,1,length.out=1000)

#rep()
rep(c(1,2,3),times=2)
rep(c(1,2,3),each=2)

#vector(ex)
x<-c(5,4,3,2,1)
length(x)
x[1]
x[c(1,2,3)]
x[-c(1,2,3)]

#vector sum
x<-c(1,2,3,4)
y<-c(5,6,7,8)
z<-c(1,2)
w<-c(1,2,3)

2+x
x+y
x+z
x+w

#is, as
x<-c(1,2,3,4)
is.vector(x)
f<-factor(x)
#is.vector(a.f)
v<-as.vector(x)
f
v

#names()

names(x)
#names(x) <- value

height<-c(80,90,70,170)
names(height)<-c("A","B","C","D")
height

x<-1:100
head(x)

head(x,n=7)

tail(x)
tail(x,n=7)

#sample(x,size,replace=FALSE)

sample(10)
sample(45,6)
sample(10,3,replace=TRUE)
sample(10,3,prob=(1:10)/55)
x<-seq(0,1,by=0.1)
x
x[sample(length(x),3)]
sample(x,3)

#which(x,arr.ind=FALSE)
x<-c(2,4,-1,3)
which(x>2)
names(x)<-c("a","b","c","d")
which(x>2)

#array(data=NA, dim=length)

arr<-array(1:3,c(2,4)) #2*4행렬을만든다
arr
arr[1,]
arr[,3]
dimnamearr = list(c("A","B"),c("A","B","C","D"))
arr2<-array(1:3,c(2,4),dimnames=dimnamearr)
arr2["A",]
arr2[,"C"]

#matrix(data = NA, nrow = 1, ncol = 1, byrow = FALSE, dimnames = NULL)

tmp<-1:12
tmp
matrix(tmp, nrow=3)
matrix(tmp, nrow=3, byrow=TRUE)

#cbind(), rbind()

v1 <- c(1,2,3,4)
v2 <- c(5,6,7,8)
v3 <- c(9,10,11,12)

cbind(v1,v2,v3)
rbind(v1,v2,v3)

#apply(X,MARGIN, FUN, ...)
v1 <- c(1,2,3,4)
v2 <- c(5,6,7,8)
v3 <- c(9,10,11,12)
m1<-cbind(v1,v2,v3)
m1

apply(m1,1,mean)
apply(m1,2,mean)

#factor(x= character(), level() exclude=NA,ordered)

#x<-c(1,2,3,4,5)
#factor(x,levels=c(1,2,3,4))
#factor(x,levels=c(1,2,3,4),exclude)
#factor(x,levels=c(1,2,3,4),exclude)

#is.factor, as.factor

v<-c(1,2,3,4)
x<-factor(v)

is.factor(x)
is.factor(v)
v
as.factor(v)

#tapply(x,INDEX,FUN=NULL,...)

score<-c(92,90,82,88,78,64,90)
subject<-c("k","k","m","m","m","k","k")
tapply(score,subject,mean)

#data.frame
name<-c("철수","영희","길동")
age<-c(21,20,31)
gender<-factor(c("M","F","M"))
character<-data.frame(name,age,gender)
character$name
character[1,]
character[,2]
character[3,1]

#attach(),detach()
head(airquality)
attach(airquality)
Ozone
attach(airquality)
Ozone[1:5]
Ozone
Ozone<-c(1,2,3)
attach(airquality)
Ozone
Month[1:5]

#with(data, expr, ...)

head(cars)
mean(cars$speed)
mean(cars$dist)
with(cars,mean(speed))
with(cars,mean(dist))

#subset(x,subset,select,drop = FALSE) 조건
airquality
subset(airquality, Temp> 80)
subset(airquality, Temp> 80, select = c(Ozone,Temp))
subset(airquality, Temp> 80, select = -c(Ozone,Temp))

#na.omit()
str(airquality)
str(na.omit(airquality))


#
title<-"My List"
ages<-c(31,41,21)
numbers<-matrix(1:9,nrow=3)
names<-c("Baby","Gentle","none")
listEx <- list(title, ages,numbers,names)
listEx
listEx[[1]]

#
listEx2 <- list(title=title, age=ages, number=numbers, name=name)
listEx2
listEx2[[1]]
listEx2$title
listEx2$age
listEx2$number
listEx2$name

#is.list(X), as.list(x)

x<-list(c(1,2,3,4),c(3,2,1))
v<-c(1,2,3,4)
is.list(x)
is.list(v)
a.l <-as.list(v)
a.l

#lapply(), sapply()

lapply(X,FUN,...)
sapply(X,FUN,...,simplify=TRUE,USE.NAMES=TRUE)

x<-list(a=1:10, beta=exp(-3:3), logic=c(TRUE,FALSE,FALSE))
lapply(x,mean)
sapply(x,mean)

#
ex <- c(1,3,7,NA,12)
ex[ex<10]
ex[ex%%2==0]
ex[is.na(ex)]
ex[!is.na(ex)]
ex[ex%%2==0&!is.na(ex)]
name<-c("철수","영희","길동")


x<-c(6:-4)
options(digits=3)
sqrt(x)

options(digits=3)
sqrt(ifelse(x>=0,x,NA))


#if
x<-c(1,2,3)
x<-factor(x)
if(is.factor(x)) length(x)
if(is.factor(x)) {
  length(x)
} else{
  sum(x)
}

if(is.factor(x)){
  length(x)
} else if(is.integer(x)){
  sum(x)
} else {
  paste(x,"element")
}

#repeat

i<-20
repeat{
  if(i>25) {
    break
  }
  else {
    print(i)
    i<-i+1
  }
}

#while

dan<-2
i<-2
while(i<10){
  times<-i*dan
  print(paste(dan,"X",i," = ",times))
  i<-i+1
}

dan<-9
for(i in 2:9){
  times<-i*dan
  print(paste(dan,"X",i," = ", times))
}

#plot 산점도.
str(Puromycin)
PuroTrt <- subset(Puromycin, state=="treated")
PuroUnTrt <- subset(Puromycin, state=="untreated")

plot(rate ~ conc, data = PuroUnTrt)

plot(rate ~ conc, data = PuroUnTrt, type="p")
plot(rate ~ conc, data = PuroUnTrt, type="l")
plot(rate ~ conc, data = PuroUnTrt, type="b")
