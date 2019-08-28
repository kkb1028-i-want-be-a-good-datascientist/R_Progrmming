### 결측치 처리하기

df <- data.frame(Pclass = c(1,2,3,NA,1),
                 Embarked = c("C", "S", "Q", NA, NA),
                 Fare = c(NA, 150, 200, 300, 100))
df

##
## is.na(데이터셋)
is.na(df)

## 결측치 개수 확인
table(is.na(df))

## 각각의 컬럼별 결측치 확인
table(is.na(df$Pclass))
table(is.na(df$Embarked))
table(is.na(df$Fare))

## 결측치가 포함되면 정상적인 연산
mean(df$Pclass)

## 전처리 ->결측치 처리, 이상치 제거 등

##library(dplyr)
df %>% filter(!is.na(Pclass))

df

## 실습 Embarked NA 빼고 출력
## Fare NA 빼고 출력
## 마지막 모든 NA를 빼고 출력하기

df %>% filter(!is.na(Embarked))
df
df %>% filter(!is.na(Fare))
df %>% filter(!is.na(Pclass)&!is.na(Embarked)&!is.na(Fare))

##
mean(df$Fare, na.rm = T)
min(df$Fare, na.rm = T)

## 데이터 선택
mtcars[seq(1,10,1), ]

mc_part <- mtcars
mc_part[c(4,8), 'drat'] <- NA
mc_part

##
mc_part %>% summarise(mean_drat=mean(drat, na.rm = T),
                      sum_drat=mean(drat, na.rm = T),
                      med_drat=median(drat, na.rm = T))

mc_part



## 실습 4-1 qsec를 4, 8행의 데이터를 NA로 처리하고,
## mean, sum, median, var, sd

mc_part <- mtcars
mc_part[c(4,8), 'qsec'] <- NA
mc_part

mc_part %>% summarise(mean_qsec=mean(qsec, na.rm = T),
                      sum_qsec=mean(qsec, na.rm = T),
                      med_qsec=median(qsec, na.rm = T),
                      var_qsec=var(qsec, na.rm = T),
                      sd_qsec= sd(qsec, na.rm = T))

mc_part %>% group_by(cyl) %>% summarise(mean_qsec=mean(qsec, na.rm = T),
                      sum_qsec=mean(qsec, na.rm = T),
                      med_qsec=median(qsec, na.rm = T),
                      var_qsec=var(qsec, na.rm = T),
                      sd_qsec= sd(qsec, na.rm = T))

## 이상치 찾고 처리.

outlier <- data.frame(Pclass=c(1,2,3,4,55,3,1,1,2),
                      family=c(1,2,3,1,2,3,1,1,1))
outlier


library(ggplot2)
search()
ggplot(data = outlier, aes(x=Pclass))+geom_boxplot()

outlier$Pclass %in% c(1,2,3)

## 값이 %in% c(1,2,3) 이면 트루 아니면 폴스
## %notin%
install.packages("Hmisc")
library(Hmisc)

'%notin%' <- Negate('%in%')
outlier$Pclass %in% c(1,2,3)
outlier$Pclass

outlier[!(outlier$Pclass %in% c(1,2,3)),]
outlier

outlier[!(outlier$family %in% c(1,2)),]
outlier[outlier$Pclass %notin% c(1,2,3),]
outlier[outlier$family %notin% c(1,2), ]

## 실습 5-1 이상치 처리
## family의 1,2에 해당되지 않는 값만 출력.

titanic <- read.csv("C:\\Users\\ktm\\Documents\\R\\0828_RClass\\train.csv")
is.na(titanic)

table(is.na(titanic))
names(titanic)

table(is.na(titanic$PassengerId))
table(is.na(titanic$Survived))
table(is.na(titanic$Pclass))
table(is.na(titanic$Name))
table(is.na(titanic$Sex))
table(is.na(titanic$Age))
table(is.na(titanic$SibSp))
table(is.na(titanic$Parch))
table(is.na(titanic$Ticket))
table(is.na(titanic$Fare))
table(is.na(titanic$Cabin))
table(is.na(titanic$Embarked))

titanic %>% filter(!is.na(SibSp))

table(outlier$Pclass)
## 이상치를 내가 원하는 값으로 대체
outlier[!(outlier$Pclass %in% c(1,2,3,4)),'Pclass'] <- 1
outlier

ggplot(outlier, aes(x=Pclass))+geom_bar()




