# INSTALL AND LOAD PACKAGES########## 

#LOAD PACKAGES
pacman::p_load(tidyverse, pacman)

#DATASET ##########

# LOAD DATASET
diamonds

#Boxplot with default
boxplot(diamonds$price)

#Using pipes
diamonds %>%
  select(price)%>%
  boxplot()

#with options
diamonds %>%
  select(price)%>%
  boxplot(horizontal = T,
          notch = T,
          main = 'Boxplot of Price of Diamond',
          sub = 'Source:: ggplot2::diamonds',
          xlab = 'PRICES OF DIAMONDS',
          col = rgb(0.7,0.5, 0))

#BOXPLOT WITH GROUP##########
diamonds %>%
  select(color, price) %>%
  plot()

diamonds %>%
  select(color, price) %>%
  boxplot(
    price ~ color,
    data = .,
    col = 'green'
  )
