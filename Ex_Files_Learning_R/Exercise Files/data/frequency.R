# INSTALL AND LOAD PACKAGES #############

# Install package manager
pacman::p_load(pacman, rio, tidyverse)
install.packages('scales')

#LOAD DATASET ##########################################
df <-import("StateData.xlsx") %>% 
  as_tibble() %>%
  select(state_code,region,psychRegions) %>%
  mutate(psychRegions = as.factor(psychRegions)) %>%
  print() 
 

# SUMMAAY ########################
summary(df)

# summary not ver useful
df %>%
  select(region) %>%
  summary()

# Table works better
df %>%
  select(region) %>%
  table()

#Using summary works that
df %>%
  select(psychRegions) %>%
  summary()

#Using table
df %>%
  select(psychRegions) %>%
  table()

#Summary multiple factors
df <-df%>%
  mutate(region = as.factor(region)) %>%
  mutate(psychRegions = as.factor(psychRegions)) %>%
  print()

summary(df)

