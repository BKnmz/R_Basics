# this is an example 
first_variable <- "This is my variable"
second_variable <- 12.5
date_variable <- ymd(2013-12-17)
bool_variable <- TRUE
vec_1 <- c(13L,12L,43L,70L)
is.integer(vec_1)
BodyMass %>% filter(body_mass_g <= 4000) %>% arrange(body_mass_g)
mylist<-list(c(1,2,3),TRUE,2.45,"AMG")
str(mylist)
library(tidyverse)
library(lubridate)
today()
now()
as_date(dmy(12032012))

data.frame(Name=c("Adam","Brian","Colby"),Age=c(23,24,30),Vaccinated=c(TRUE,FALSE,TRUE))
file.create("sample_text.txt")
file.copy("sample_text.txt","test")
unlink("sample_text.txt")
matrix(c(0:99),ncol = 10)
x <- (-614)
if (x>0) {
 print("x positive")
} else {
 print("x is negative")
}
glimpse(penguins)
importIntoEnv(penguins)
