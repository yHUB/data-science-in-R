


# INSTALL AND LOAD PACKAGES #############

# Install package manager
pacman::p_load(pacman, tidyverse)


# LOAD DATASET #############
# DIAMOND
?diamonds
diamonds



# BARPLOT #$################
?plot
?boxplot
# Boxplot with default
boxplot(diamonds$price)

# Using pipe
diamonds %>%
  select(price) %>%
  boxplot()


# }Using options
diamonds %>%
  select(price) %>%
  boxplot(
    horizontal =T,
    main = 'Boxplot of price',
    xlab = 'price f diamond',
    col = 'red'
  )
# BOX PLOT BY GROUP ########################

diamonds %>%
  select(color, price)%>%
  plot()

 
# BOXPLOT BY GROUP
diamonds %>%
  select(color, price) %>%
  boxplot(
    price ~ color,
    data = .,
    col = 'red'
  )
#CLEAN UP########################

rm(list = ls())
\  