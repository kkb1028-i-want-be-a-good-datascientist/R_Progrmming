### Summary
## 현재 작업 디렉토리 확인
getwd()
setwd()

## 벡터
a<-c(12,3,3)

##
seq(0, 100, 2)

## 패키지 관리
install.packages("")
library()
search()

## 데이터 탐색
dim()
head()
tail()

str()
is(mtcars$mpg) # 자료형 확인
class(mtcars$mpg)

names(mtcars)
colnames(mtcars)

summary(mtcars)

## 데이터 읽어오기
read.table("파일명", sep=",")
read.csv()
read_excel()

## 가장 많이 사용되는 자료형
## 데이터 프레임
## 

## 통계 기본
mean()
max()
min()
median()
IQR() # 75% 지점값-25% 지점값
quantile(mtcars$mpg)

## 데이터 쓰기
write.csv()

## RData파일 (.rda)
save()
load()

## ggplot
## dplyr
##

##
# 행추출 filter()
# 열추출 select()
# 정렬   arrange()
# 변수 추가 mutate()
# 집단별로 나누기 - goup_by()
# 통계치 산출 - summarize()
# merge, left_join
# 




















