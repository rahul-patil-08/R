


# checking Working Directory
getwd()

#setting Working Directory
Setwd()


#data Frame
Name<- c("Rahul","Rajesh","Radha","Kishore")
Age<- c(25,16)
Sex<- c("Male","Male","FeMale","Male")
Demog<- data.frame(Name,Age,Sex)


#length/Dimensions of the Variables
length(Age)
length(Name)
length(Sex)

#Adding Missing observations in a data set using length functions simlar to imputation

Imputaion<- max(length(Name),length(Age),length(Sex))

Demog1<- data.frame(Name1=c(Name, rep(NA,Imputaion-length(Name))),
                    Age1=c(Age, rep(mean(Age),Imputaion-length(Age))),
                    Sex1=c(Sex, rep(NA,Imputaion-length(Sex))))
Demog1

#type of Data
class(Name)
#lists of caraiables and datasets
ls()

#provides the structre of datasets or variac=ble
str(Demog)


#it removes the varaiables and datasets from the working Envirnoment
rm(Sex)
rm(Demog1)




Date<- "12-Aug-2024"
class(Date)

# generic formula
#is.datatype(varaiablename)
is.character(Date)
is.numeric(Date)

numeric<- 25

is.character(numeric)
is.numeric(numeric)

complex_var<- 3 +2i

is.complex(complex_var)

Dataframe<- data.frame(Date,numeric,complex_var)
Dataframe


#Extract the varaiable num from dataFrame

#datasetname--Dollarsymbol---VariableName
Dataframe$numeric

is.complex(Dataframe$complex_var)

#generic to convert a datatype to another datatype
# as.datatype(Variablename)

number<- "4"
class(number)
Numchar<- as.numeric(number)
class(Numchar)
charnum<- as.character(Numchar)
class(charnum)


#install.packages("foreign")
library(foreign)














