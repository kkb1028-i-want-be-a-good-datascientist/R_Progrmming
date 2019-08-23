# Review

getwd()
setwd("C:\\users")
getwd()
setwd("C:/Python")

a <- 10
a <- 1.4
is(a)
class(a)
a <- "string"
is(a)

## R의 기본 자료형
vec1 <- c(1,2,3,4)
vec1

seq(1,10,by=2)

min(vec1)
max(vec1)
sd(vec1)
var(vec1)
median(vec1)
mean(vec1)

### 패키지 설치

install.packages("ggplot2")
library(ggplot2)
search()

x <- c('a','b','c','b','b','c')
qplot(x)

###데이터 탐색
mpg
dim(mpg)
names(mpg)
colnames(mpg)
head(mpg)
tail(mpg)

## 요약값
summary(mpg)
str(mpg) # 자료의 구조 파악 ex) factor는 범주형

qplot(data=mpg, x=hwy) # 수치형은 주로 박스크래프나 히스토그램으로 표현

## read.csv()
## read_excel()
## read.table()

## 데이터 프레임 만들기
kor <- c(80,80,90)
eng <- c(100,100,100)
math <- c(95,100,70)

df <- data.frame(kor, eng, math)
df









