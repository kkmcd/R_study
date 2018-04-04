#install.packages("psych")
library("psych")

library(readxl)
student <- read_excel("C:/R/source/빈도분석.xls")
attach(trees)
hist(Volume)
describe(Volume)

i<- c(300, 150, 0, -100)
A<- c(0.58, 0.87, 0.55, 0.05)
B<- c(0.65, 0.51, 0.45, 0.05)
ma = sum(i*A)
mb = sum(i*B)
ma
mb
vara = sum(A*(i-ma)^2)
varb = sum(B*(i-mb)^2)

vara
varb

cycle<-c(0.7,0.5,0.2)
expandincome<-c(100,200,400)
expandprob<-c(0.3,0.4,0.5)
income<-c(200,400,800)
prob<-c(0.2,0.4,0.6)

a = sum(cycle*expandprob*expandincome)
b = sum(cycle*prob*income)
a
b

vara = sum(cycle*(expandprob*expandincome-a)^2)
varb = sum(cycle*(prob*income-b)^2)
vara
varb

?norm
?pnorm
1-pnorm(185,170,10)

pnorm(4,5.4,sqrt(1.5))
qnorm(.1,5.4,sqrt(1.5))

dbinom(3,10,0.5)
pbinom(6,10,0.5)
pbinom(6,10,0.5,lower.tail=FALSE)
qbinom(0.3,10,0.5)
rbinom(30,10,0.5)
dbinom(2,49,0.1)
dpois(7,5)
ppois(7,5)
ppois(7,5,lower.tail=FALSE)
qpois(0.7,5)
rpois(30,5)#모의실험 30번 반복

#포아송 예제
dpois(1,3)+dpois(0,3)
dpois(4,3)+dpois(5,3)

#이항분포 포아송분포 문제
dbinom(5,100,0.05)
dpois(5,5)

#t분포 문제
pt(1.397, 8, lower.tail=TRUE, log.p=FALSE)
pt(1.180, 8) - pt(-1.397,8)
qt(0.25,8,lower.tail=TRUE)

# (a) P(X^2 <= 15.507)
# (b) P(X^2 >= 2.180)
# (c) P(1.667 <= x^2 <= 13.362)

pchisq(15.507,8,lower.tail=TRUE, log.p=FALSE)
qchisq(2.180,8,lower.tail=TRUE, log.p=FALSE)