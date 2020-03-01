# Assignment #3 - part 1
# 
# 1. Import data file (.csv) into 2 R objects
# 2. Linear Regression / Model
# 3. Visualize the results

# Libs
library(dplyr)
library(magrittr)

# Get the cuurent working directory of the running script
WD = dirname(rstudioapi::getSourceEditorContext()$path)
if (!is.null(WD)) setwd(WD)
print(WD)

# Read in rows from the file in the working directory
traindata <- read.csv(file="../data/train.csv",head=TRUE,sep=",")
testdata <- read.csv(file="../data/test.csv",head=TRUE,sep=",")

#Create a data frame of the data
traindata=data.frame(traindata)
traindata=na.omit(traindata)

testdata=data.frame(testdata)
#testdata <- select(testdata, x)


#Plot the dataset
plot(traindata$x, traindata$y, xlab="x", ylab="y", xlim=c(0,120), ylim=c(0,120), cex=0.75, pch=20)

#The correlation between x and y (very strong positive linear relationship)
cor(traindata$x, traindata$y, use = "complete.obs")

#Linear regression model on the traindata dataset
regression.model <- lm(y ~ x, traindata)

#Plot the model - ab-line (a = intercept, b = slope)
abline(regression.model)

#Summary
summary(regression.model)

#inside regression object - [1] and [5]
names(regression.model)

#[5] fitted.values for entire dataset
#regression.model$fitted.values
plot(traindata$x, regression.model$fitted.values)

#### PREDICTIVE MODE ####
#entire testdata (predicting y for x)
prediction <- predict(regression.model, testdata)

#Diplay all predictions
prediction

#Append predictions to test data (compare predict vs test data)
comparison <- cbind(testdata, prediction)
comparison

#### Analysis ####
# There is a very strong positive linear relationship between x and y in the train data
# as seen in function 'cor' and the regression.model coefficients.