##
install.packages("dplyr")
library(dplyr)
search()

mtcars
?mtcars

dt_new <- mtcars
dim(dt_new)
head(dt_new)
tail(dt_new)

dt <- data.frame(var1=c(1, 3, 5), var2=c(2, 4, 6))
dt

## 새로운 데이터 컬럼
dt$total <- dt$var1+dt$var2
dt

dt_new$sum <- dt_new$disp+dt_new$hp+dt_new$drat
dt_new
names(dt_new)

?ifelse

dt_new$sumco <- ifelse(dt_new$sum > 600, "대", ifelse(dt_new$sum > 400, "중", ifelse(dt_new > 300, "중", "소")))
dt_new$sumco

library(ggplot2)
dat <- mpg
dat$total <- (dat$cty + dat$hwy) / 2
summary(dat$total)

dat$passfail <- ifelse(dat$total >= 20, "pass", "fail")
head(dat$passfail, 20)
summary(dat$passfail)
qplot(dat$passfail)

dat$fuel_class <- ifelse(dat$total >= 23.5, "A", ifelse(dat$total >= 15.5, "B", ifelse(dat$total < 15.5, "C", "D")))
head(dat$fuel_class, 20)

ggplot(dat, )

table(dat$fuel_class)
qplot(dat$fuel_class)

## 값의 변경
new_val <- c(1,2,3,4,5,6)
length(new_val)
new_val[3] <- 30
new_val

new_val[TRUE]
new_val[new_val %% 2 == 0]
new_val

new_val[new_val %% 2 == 0] = 200
new_val

value <- seq(0, 100, by = 2)
value
value[value %% 5 == 0] = 1000
value
value[(value %% 5 == 0)&(value %% 2 ==0)] = 10000
value

ls() ## 변수 확인

## rm(변수 또는 객체명)
rm(value)
ls()
ls.str() ## 변수 상세하게 확인

##installed.packages() 설치한 패키지 목록
installed.packages()
class(installed.packages())
installed.packages()[ , c("package", "version")]





























