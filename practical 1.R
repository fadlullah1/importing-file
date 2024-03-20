# importing csv file
managers <- read.csv("managers.csv")
View(managers)

# checking if there is na's
managers[!complete.cases(managers)]

new_managers <- na.omit(managers)
new_managers

new_managers <- managers[complete.cases(managers),]

complete_data <- !complete.cases(managers)
complete_data

sapply(managers,function(x) sum(is.na(x)))

sum(complete_data)

managers[complete.cases(managers),]

nrow(new_managers)

#find the sum of all missing value in the age attribute
is.na(managers$Age)
sum(is.na(managers$Age))

# find the mean of missing value from the age attribute
mean(is.na(managers$Age))

# find the mean of rows with no missing data
mean(!complete.cases(managers))

install.packages("mice")
library(mice)
md.pattern(managers)

install.packages("VIM")
library(VIM)

missing_value <- aggr(managers,prop = FALSE, numbers = TRUE)
missing_value
summary(missing_value)

#using heat map 
matrixplot(managers)

missing_value <- as.data.frame(abs(is.na(managers)))
head(missing_value)

correlation_matrix <- missing_value[(apply(missing_value,2,sum)> 0)]
correlation_matrix

cor(missing_value)
