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
warriors <- arrange(filter(data, team == 'GSW'), salary)
write.csv(warriors, '../data/warriors.csv', row.names = FALSE)

sink(file = '../output/data-structure.txt')
str(data)
sink()

sink(file = '../output/summary-warriors.txt')
summary(warriors)
sink()

sink(file = '../output/summary-lakers.txt')
summary(filter(data, team == 'LAL'))
sink()

jpeg('../images/histogram-age.jpeg', width = 600, height = 400)
hist(data$age)
dev.off()

png('../images/scatterplot2-height-weight.png', pointsize = 8)
plot(data$height, data$weight, pch = 20, xlab = 'Height', ylab = 'Weight')
dev.off()

ggplot(data, aes(height, weight)) + geom_point() + facet_wrap(~team)
ggsave('../images/height_weight_by_position.pdf')
