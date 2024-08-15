
# working Directory
getwd()
# changing Working Directory
setwd("C:/Users/rahul/Desktop/R/Youtube R/")
getwd()


#instal Packages 
library(readxl)
library(csv)
library(foreign)

#importing the datasets
ExcelFile<- read_excel("CLASS.xlsx")
Csvfile<- read.csv("Class.csv")


# Attach and Derach options used to read the excel file and give the each variable data individually 
attach(ExcelFile)
Name
detach(ExcelFile)


#sorting The Dataset
Sort<- ExcelFile[order(ExcelFile$Name,ExcelFile$Age, decreasing = T),]

install.packages("dplyr")
library(dplyr)

Sort1=arrange(ExcelFile,Name, Height)

#Removing Duplicates
Duplicates<- distinct(ExcelFile,Age,Sex)


Excel2<- read_excel(file.choose())
numbers<- c(1,5,7,8,9,12,17)

#arrange vector in ascending or descending order
# it only work with vector, this will not work in case of dataframe
# for dataframe we need to use order or arrange functions
sort(numbers)

sort(numbers, decreasing = T)

order(numbers)
numbers[order(numbers)]
rank(numbers)

# Columns Names of data frame
colnames(ExcelFile)

#Gives top 6 observations
head(ExcelFile)


#gives last 6 observations
tail(ExcelFile)

# structure of data frame
str(ExcelFile)

# for editing of observations in data frame (NOT RECOMENDED)
fix(ExcelFile)


# no of variables
length(ExcelFile)

# no of columns or variables 
ncol(ExcelFile)

#no of rows or observations or datapoints
nrow(ExcelFile)

# 1) no of rows 2) no of columns
dim(ExcelFile)

#Extact the index of variable of dataframe or vector
grep("Height", colnames(ExcelFile))

#subseting datasets using indexing function 
ExcelFile[2,2]
ExcelFile[2,]
ExcelFile[,2]
ExcelFile[1:5,]
ExcelFile[,grep("Height", colnames(ExcelFile))]










