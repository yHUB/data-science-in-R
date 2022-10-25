# Install package manager
pacman::p_load(pacman, rio, tidyverse)


#LOAD DATAET ##########################################
df <-import("StateData.xlsx")%>% 
  as_tibble() %>%
  select( instagram:modernDance) %>%
  #mutate(psychRegions = as.factor(psychRegions)) %>%
  # rename(y = psychRegions)%>%
  print()

# CORRELATION MARTIX #############################
cor(df)

#Rounded to 2 decimal
df %>%
  cor() %>%
  round(2)

#Single corrleation################
cor.test(df$instagram, df$privacy)


#P VALUES FOR MATRIXload package ################################
p_load(Hmisc)

#Need to coerce from dataframe to matrix to get both correletaion
#p-values
df %>%
  as.matrix() %>%
  rcorr()


rm(list = ls())
