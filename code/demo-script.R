# Title: Demo script for Lab05
# Description: what the script is about (one paragraph or two)
# Input(s): what are the main inputs (list of inputs)
# Output(s): what are the main outputs (list of outputs)
# Author: Daniel Chen
# Date: 10-04-2019

# packages
library(dplyr)    # data wrangling
library(ggplot2)  # graphics

data <- read.csv('../data/nba2018-players.csv')
warriors <- arrange(filter(data, data$team == 'GSW'), salary)
write.csv(warriors, '../data/warriors.csv', row.names = FALSE)
