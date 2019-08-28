library(rJava)
library(memoise)
library(KoNLP)

##
useNIADic()

txt <- readLines("C:\\Users\\ktm\\Documents\\R\\0828_RClass\\SpiderMan.txt")

## R에서 텍스트가 꺼지면 메모장 파일을 인코딩을 ANSI로 저장

head(txt)
length(txt)
is(txt)

## 문자열 처리
#install.packages("stringr")
library(stringr)

## 특수 문자 제거
txt <- str_replace_all(txt, "\\W", " ")
head(txt)

## 명사 추출
extractNoun("오늘은 즐거운 날이다. 당신은 소중한 사람입니다.")
nouns <- extractNoun(txt)
nouns
is(nouns)
unlist(nouns)
wordCount <- table(unlist(nouns)) #table은 빈도수를 나타내준다.
wordCount

# 데이터 프레임 전환
df_word <- as.data.frame(wordCount, stringsAsFactors = F)
df_word

library(dplyr)
df_word <- rename(df_word, word=Var1, freq=Freq)
df_word

install.packages("wordcloud")
library(wordcloud)
library(RColorBrewer)

## 색상 추출
pal <- brewer.pal(8, "Dark2")
set.seed(1004)

## 워드 클라우드
wordcloud(word=df_word$word,
          freq=df_word$freq,
          color=pal,
          random.order=F,
          rot.per=0.4,
          max.words = 100)

dim(df_word)



















