##변수

a <- 1
d <- 3.5

a + d


##
var1 <- c(1,2,3,4,5)
var1

var1 <- c(1,2,3,4,5)
var2 <- c(1,2,3,4,5)

var1 + var2

##
str1 <- "hello world"
str1

##
str2 <- c("hello", "world", "Today")
str2

var1 <- c(1,2,3,4,5)
mean(var1)
var(var1)
sd(var1)
max(var1)
min(var1)
median(var1)

a <- c(10, 13, 11, 29, 45)
var(a)
mean(a)
sd(a)
var(a)
plot(a)
plot(var1)
##3 문자열 처리 함수
str5 <- c(1,2,3,4,5)
is(str5)
str5 <- c("hello", "world", "toto")

##paste(벡터, collapse=",")
paste(str5, collapse=",")
?paste
result <- paste(str5, collapse=" ")
result

### 패키지 이해
# * 패키지는 함수들을 모아둔 상자.
# * 설치 : install.package("ggplot2")
# * 불러오기 : library(ggplot2)
# * 확인 : search()

install.packages("ggplot2") # 그래프 그리기
library(ggplot2)
search()

?qplot

x <- c('a', 'a', 'b', 'b', 'b', 'c')
qplot(x)

x <- c('1','1','3','4','4','4','5','5')
qplot(x)
x <- c('lion','lion','lion','lion','tiger','tiger','leopard','leopard','leopard')
qplot(x)

## 데이터 셋
search()
mpg
?mpg

## 데이터 셋 알아보기
# 행과 열
dim(mpg)
# 이 데이터는 어떤 자료형일까?
# 데이터는 어떤 데이터가 있지?
# column명은 뭐가 있을까?
colnames(mpg)
names(mpg)
# 요약값을 볼 수 있을까?
summary(mpg)

#qplot(data=데이터셋,x=컬럼명, y=컬럼명)
qplot(data=mpg,x=cty)
# 범주형 : 수가 정해진 값들
qplot(data=mpg, x=drv, y=hwy, geom="boxplot")

qplot(data=mpg, x=drv, y=hwy, geom="boxplot", color=drv)
## qplot을 이용해서 mpg데이터 셋에 대해서 확인해 보기

#frontier1020@naver.com

qplot(data=mpg, x=drv, y=cty, geom="boxplot", color=drv)

qplot(data=mpg, x=drv, y=fl, geom="boxplot", color=drv)

?plot

?mpg
qplot(data=mpg, x=drv) # 가장 많은 사람이 이용하는 차종은 전륜구동이다.

qplot(data=mpg, x=drv, y=cty, geom="boxplot", color=drv) # 도시 내에서의 연비는 전륜구동이 가장 좋다. 전륜구동은 이상치 6개, 사륜구동이 1개

qplot(data=mpg, x=drv, y=hwy, geom="boxplot", color=drv) # 고속도로 내에서 연비는 전륜구동이 가장 좋다. 이상치는 전륜구동에서만 8개가 있다.

qplot(data=mpg, x=class, y=cty, geom="boxplot") # 도시 내에서 연비가 가장 좋은 차량형태는 midsize이다.

qplot(data=mpg, x=fl, y=hwy, geom="boxplot") # 배기량이 가장 적은 연료 타입은 e타입이다.

qplot(data=mpg, x=trans)
qplot(data=mpg, x=drv, geom="bar") + coord_polar()
qplot(data=mpg, x=displ, y=hwy, geom="point") # 엔진 배기량에 따른 연비, 대체적으로 우하향하는 모습을 보이며, 엔진 배기량이 클수록 연비가 떨어진다는 것을 알 수 있음.
qplot(data=mpg, x=hwy, y=displ, geom="point") 





















