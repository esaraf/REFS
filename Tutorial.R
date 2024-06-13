## Objective: Connect GitHub repository to your local machine.

## Background context: This tutorial is only about getting
## a connection between your local machine and your GitHub.

## It uses a tutorial dataset for running a simple linear
## regression.

## Don't worry if the stats get too confusing, 
## the purpose of this exercise is to get comfortable working
## on your local machine and the GitHub application.

## https://www.scribbr.com/statistics/linear-regression-in-r/


# ---------------- Importing Dataset -----------------------

## DOWNLOAD CSV FILE: Simple regression dataset from the URL above
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

ß









