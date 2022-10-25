# Project: Learning R


#INSTALL AND LOAD PACKAGES ##############

# Install pacman ('package manager') #############
if (!require('pacman')) install.packages('pacman')

# load contributfed packages wwith pacman
pacman::p_load(pacman, party, psych, rio, tidyverse)


# Load base packages manually
library(datasets) # For example datasets


#Import CSV files with read.csv from tidyverse
(df <- read.csv('C:/Users/Adeyinka/Desktop/Learning/Ex_Files_Learning_R/Ex_Files_Learning_R/Exercise Files/data/StateData.csv'))

#Import other format with rio:: import from rio 
(df <- import('C:/Users/Adeyinka/Desktop/Learning/Ex_Files_Learning_R/Ex_Files_Learning_R/Exercise Files/data/StateData.xlsx') %>% as_tibble())

# or

df <- import('C:/Users/Adeyinka/Desktop/Learning/Ex_Files_Learning_R/Ex_Files_Learning_R/Exercise Files/data/StateData.csv') %>%
  as_tibble() %>%
  select(state_code,
         psychRegions,
         instagram:modernDance)%>%
  mutate(psychRegions = as.factor(psychRegions)) %>%
  rename(y = psychRegions) %>%
  print()


# ANALYZE DATA ##########
#
# bY USINNG STANDARDISED OBJECT SND VARIABLES NAME, THE SAME 
# CODE CAN BE REUSED FOR DIFFERENT ANZLYSES

#Decision tree using party::ctree
# df[, -1]  exclude the state code
fit <-ctree(y ~., data = df[, -1]) # create tree
fit %>% plot()
fit %>%
  predict() %>%
  table(df$y)
  

hc <-df %>% #Get data
  dist %>%  #comute distance/dissimilarity mnatrix
  hclust %>% #compute hierarchical clusters
  plot(labels =df$state_code) #Plot dendogram
  hclust %>% 
 
#CLEAN UP ###########################

# cLEAR ENVIRONMENT
rm(list = ls())

#clear packages 
p_load((all)
detach('package:datasets', unload = TRUE) #For base

# Clear plots
dev.off()

# Clear console
cat('\014')
