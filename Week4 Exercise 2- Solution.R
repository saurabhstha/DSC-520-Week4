# Assignment: Housing Dataset
# Name: Shrestha, Saurabh
# Date: 2021-04-10

install.packages("ggplot2")
install.packages("plyr")
install.packages("readxl")
install.packages("pastecs")
install.packages("psych")
library(readxl)
library(ggplot2)
library(plyr)
library(psych)
library(pastecs)

setwd("C:/Users/Saurabh/Desktop/DSC 520/Week4")

"a. Use the apply function on a variable in your dataset."
housing_data = read_excel("week-6-housing.xlsx")
head(housing_data)
apply(housing_data, 2, mean,na.rm = TRUE )

"b.Use the aggregate function on a variable in your dataset"
aggregate(housing_data$`Sale Price` ,by = list(housing_data$`Sale Price`), FUN = sum)

"c. Use the plyr function on a variable in your dataset..."
ddply(housing_data, .(housing_data$sale_instrument), transform, 
      total.pricesale = sum(`Sale Price`))

"d.Check distributions of the data"
colnames(housing_data)[2] <- "Sale_Price"
ggplot(housing_data, aes(bedrooms)) + geom_histogram() + ggtitle("Bedroom count")+ xlab ("Number of Bedrooms")
ggplot(housing_data, aes("Sale_Price")) + geom_histogram(bins = 30L,) + ggtitle("Sale Price")+ xlab("Price of House at Sales")

"e.Identify if there are any outliers"
summary(housing_data)
summary(housing_data$Sale_Price)
boxplot(housing_data$Sale_Price)
hist(housing_data$Sale_Price, main = "Housing Data Histogram", xlab = "Sale Price")

"f. Create at least 2 new variables."
housing_data$price_per_square_feet <- housing_data$Sale_Price/housing_data$square_feet_total_living
housing_data$total_bathrooms <- housing_data$bath_full_count + housing_data$bath_half_count + housing_data$bath_3qtr_count
head(housing_data)

