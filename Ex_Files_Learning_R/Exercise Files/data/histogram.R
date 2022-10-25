

# INSTALL AND LOAD PACKAGES #############

# Install package manager
pacman::p_load(pacman, tidyverse)


# LOAD DATASET #############
# DIAMOND
?diamonds
diamonds

# HISTOGRAM#######################
?hist
hist(diamonds$price)

# histogram with options
df <- diamonds$price

df %>%
  hist(breaks = 7,
  main = 'Histogam of price of diamond',
  sub = "Sopurce ",
  col = 'cyan',
  border = T,
  ylab = 'Frequencies',
  xlab = 'price')


rm(list = ls())  
