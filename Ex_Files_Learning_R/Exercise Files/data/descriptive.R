# INSTALL AND LOAD PACKAGES #############

# Install package manager
pacman::p_load(pacman, rio, tidyverse)
# install.packages('scales')

#LOAD DATAET ##########################################
df <-import("C:/Users/Adeyinka/Desktop/Learning/Ex_Files_Learning_R/Ex_Files_Learning_R/Exercise Files/data/StateData.xlsx")%>% 
  as_tibble() %>%
  select(state_code,
         psychRegions,
         instagram:modernDance) %>%
  mutate(psychRegions = as.factor(psychRegions)) %>%
  # rename(y = psychRegions)%>%
  print()


## Summary #########################

df%>% summary()

df%>%
  select(entrepreneur) %>%
  summary()

#QUARTILES ####################
fivenum(df$entrepreneur)

# Boxplot stats: hinges, n, CI for median, outlliers
boxplot(df$entrepreneur, notch = T, horizontal = T)
boxplot.stats(df$entrepreneur)


#ALTERNATIVE DESCRIPTIVE ###########################
p_load(psych)
p_help(pysch,)

describe(df$entrepreneur)
describe(df)

rm(list = ls())
