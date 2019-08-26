install.packages("dplyr")
install.packages("ggplot2")
install.packages("gridExtra")
library(ggplot2)
search()

bike <- read.csv("C:\\Users\\ktm\\Documents\\R\\bike\\train.csv")
bike

dim(bike)
sd(bike)
summary(bike)
var(bike)
head(bike)
tail(bike)
str(bike)
names(bike)



#"datetime" 정시마다 체크
#"season" 계절
#"holiday" 1: 휴일, 0: 휴일이 아닌날
#"workingday" 1: 평일, 0: 주말과 휴일 포함 
#"weather" 날씨  
#"temp" 기온     
#"atemp" 체감 기온    
#"humidity" 습도
#"windspeed" 풍속
#"casual" 미등록 사용자의 대여 횟수    
#"registered" 등록된 사람의 대여 횟수
#"count" 전체 대여 횟수

### 관련 여부 체크
# 계절과 이용객
# 주말과 평일의 이용객
# 날씨에 따른 이용객
# 기온에 따른 이용객

p1 <- ggplot(data=bike, aes(x=factor(season), y=count))+geom_boxplot()
p1
# 모든 계절에서 이상치가 매우 많은 것을 알 수 있다. 따라서 자전거 이용에 있어 계절적 특성은 큰 영향을 미치지 않는다는 것을 알 수 있다.

p2 <- ggplot(data=bike, aes(x=factor(workingday), y=registered))+geom_col()
p2
p2 <- ggplot(data=bike, aes(x=factor(workingday), y=casual))+geom_col()
p2
# 등록된 사람들은 평일에 자전거를 더 많이 사용한다는 것을 알 수 있다. 반면, 미등록 사용자는 평일과 평일이 아닌 날의 사용빈도가 큰 차이가 없다.

p3 <- ggplot(data=bike, aes(x=factor(weather), y=casual))+geom_boxplot()
p3
# 폭우나 빙판길, 천둥번개 등과 같이 기상이 매우 안 좋은 경우가 아니라면 꽤 많은 사람들이 자전거를 이용하는 것으로 보인다. 

p4 <- ggplot(data=bike, aes(x=temp, y=registered))+geom_point()
p4
# 자전거 이용 패턴은 기온과는 큰 연관이 없는 것으로 보인다.

p5 <- ggplot(data=bike, aes(x=factor(datetime), y=count))+geom_col()
p5

p6 <- ggplot(data=bike, aes(x=factor(holiday), y=registered))+geom_col()
p6
# 휴일이 아닌 날에 자전거를 이용하는 사람이 훨씬 많다.




















