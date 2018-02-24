#Exploratory data analysis code

## Get univariate distribution

setwd("the location of ur data")
project_dataset<-read.csv<-("datasetname.csv")

install.packages("Hmisc")
install.packages("pastecs")
library(Hmisc)
library(pastecs)

nums <- sapply(project_dataset, is.numeric)
Hmisc_result<-describe(project_dataset)
pastecs_result<-data.frame(t(stat.desc(project_dataset)))
correlation_result<-data.frame(cor(project_dataset[,nums]))

write.csv(pastecs_result,"pastecs_result.csv")
write.csv(correlation_result,"Correlation_result.csv")

#open microsoft excel and copy paste the results of the 
#two csvs in one excel after which copy paste the following result 
#in the third sheet

Hmisc_result
