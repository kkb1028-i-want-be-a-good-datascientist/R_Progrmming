install.packages("rJava")
install.packages("memoise")
install.packages("KoNLP")

library(rJava)
library(memoise)
library(KoNLP)

search()

### 사전 설정하기
useNIADic()
Sys.setlocale("LC_CTYPE", "ko_KR.UTF-8");

### 데이터 준비하기(스파이더맨 데이터)
txt <- readLines('C:\\Users\\ktm\\Documents\\R\\0828_RClass\\SpiderMan.txt', encoding="EUC-KR")
head(text)

## R에서 텍스트가 꺼지면 메모장 파일을 인코딩을 ANSI로 저장

### 문자열 처리하기
install.packages("stringr")
library(stringr)
search()

### 특수문자 제거
txt <- str_replace_all(txt, "\\W", " ")
txt

### 명사 추출
### KoNLP의 extractNoun()을 사용
extractNoun("오늘은 즐거운 날이다. 당신은 소중한 사람입니다.")
nouns <- extractNoun(txt)
wordCount <- table(unlist(nouns))

### 데이터 프레임 전환
df_word <- as.data.frame(wordCount, stringsAsFactors = F)

### 변수명 수정
library(dplyr)
df_word <- rename(df_word, word=Var1, freq=Freq)
df_word

### 두글자 이상 단어 추출
df_word <- filter(df_word, nchar(word) >= 2)
df_word

df_word <- rename(df_word, word=Var1, freq=Freq)
df_word























