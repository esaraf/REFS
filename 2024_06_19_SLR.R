### Simple Linear Regression 

## Objective: Connect GitHub repository to your local machine.

## Background context: This tutorial is only about getting
## a connection between your local machine and your GitHub.

## It uses a tutorial dataset for running a correlation test

## Don't worry if the stats get too confusing, 
## the purpose of this exercise is to get comfortable working
## on your local machine and the GitHub application.

## https://www.scribbr.com/statistics/linear-regression-in-r/

## TWO OPTIONS: Follow directly along with the online tutorial 
## (simple linear regression) or practice using the Master Key 
## from NSU's Biostatistics course running a correlation test.

# ---------------- Tutorial simple linear regression -----------------------

## DOWNLOAD CSV FILE: Simple regression dataset from the URL above
### CHANGE HARD CODED DIRECTORY
data <- read.csv("/Users/elizabethsaraf/Code/GitHub/REFS/REFS/income.data.csv") 
# The path you copy in SHOULD be different than mine!

head(data)

## Commit & Push changes with message!

##Install packages that you need for the analysis (you only need to
## do this once)

# install.packages("ggplot2)
# install.packages("dplyr)
# install.packages("broom)
# install.packages("ggpubr)

library(ggplot2)
library(dplyr)
library(broom)
library(ggpubr)

## Run a summary of your data to ensure it is what you are expecting
summary(data)

# Your output SHOULD match mine: 
#           X             income        happiness    
#Min.   :  1.0   Min.   :1.506   Min.   :0.266  
#1st Qu.:125.2   1st Qu.:3.006   1st Qu.:2.266  
#Median :249.5   Median :4.424   Median :3.473  
#Mean   :249.5   Mean   :4.467   Mean   :3.393  
#3rd Qu.:373.8   3rd Qu.:5.992   3rd Qu.:4.503  
#Max.   :498.0   Max.   :7.482   Max.   :6.863  

## Check data to understand compliance with analysis assumptions 
# 1. Independence of Observation (aka no autocorrelaation)

# 2. Normality 
hist(data$happiness)
# If assumption is met: observations should be roughly normally
# distributed 

# 3. Linearity 
plot(happiness ~ income, data = data)
# If assumption is met: observations should be a roughly linear
# scatterplot output. 

# 4. Homogeneity of variance (we will address this later)

## Is there a linear relationship between income and happinesss?

income.happiness.lm <- lm(happiness ~ income, data=data)
summary(income.happiness.lm)

# Call:
# lm(formula = happiness ~ income, data = data)
#
# Residuals:
#   Min       1Q   Median       3Q      Max 
# -2.02479 -0.48526  0.04078  0.45898  2.37805 
#
# Coefficients:
#             Estimate    Std. Error t value Pr(>|t|)    
# (Intercept)  0.20427    0.08884   2.299   0.0219 *  
# income       0.71383    0.01854  38.505   <2e-16 ***
#  ---
#  Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1
#
# Residual standard error: 0.7181 on 496 degrees of freedom
# Multiple R-squared:  0.7493,	Adjusted R-squared:  0.7488 
# F-statistic:  1483 on 1 and 496 DF,  p-value: < 2.2e-16

## Commit Final Changes & Start a Pull Request


## Summary Plot

# --------------------------------------------------------------------

# ---------------- Tutorial correlation test
# Import datasset 
dataset <- read.csv("/Users/elizabethsaraf/Code/GitHub/REFS/REFS/income.data.csv")
attach (dataset)

## Check Parametric Assumptions 
library(lme4)
library(car)
scatterplot(income,happiness) # Checks linearity
shapiro.test(income) # Shapiro-Wilks test for Normality 

#Shapiro-Wilk normality test

#data:  income
#W = 0.95185, p-value = 1.159e-11
shapiro.test(happiness)
#Shapiro-Wilk normality test

#data:  happiness
#W = 0.98705, p-value = 0.0002095

##Pearson Correlation 
cor.test(income, happiness)

# Pearson's product-moment correlation

# data:  income and happiness
# t = 38.505, df = 496, p-value < 2.2e-16
# alternative hypothesis: true correlation is not equal to 0
# 95 percent confidence interval:
# 0.8417942 0.8861031
# sample estimates:
#       cor 
# 0.8656337 

## Summary Plot 

lm(income~happiness)

# Call:
#   lm(formula = income ~ happiness)
# 
# Coefficients:
#   (Intercept)    happiness  
#     0.9053       1.0497  


plot(happiness~income, pch=16,axes=F,xlab='',ylab='')
axis(1,cex.axis=0.8)
mtext(text='Income', side=1,line=3)
axis(2,las=1)
mtext(text='Happiness',side=2,line=3)
box(bty='l')
abline(lm(happiness~income))
x <- seq(min(income),max(happiness), l=1000)
y <- predict(lm(happiness~income), data.frame(income=x), interval='c')
matlines(x,y,lty=2,col=1)
ldataset <- read.csv("")

