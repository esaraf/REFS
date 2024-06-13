## Objective: Connect GitHub repository to your local machine.

## Background context: This tutorial is only about getting
## a connection between your local machine and your GitHub.

## It uses a tutorial dataset for running a simple linear
## regression.

## Don't worry if the stats get too confusing, 
## the purpose of this exercise is to get comfortable working
## on your local machine and the GitHub application.

## https://www.scribbr.com/statistics/linear-regression-in-r/

## 


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

