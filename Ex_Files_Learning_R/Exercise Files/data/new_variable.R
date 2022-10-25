# INSTALL AND LOAD PACKAGES #############

# Install package manager
pacman::p_load(pacman, rio, tidyverse)
install.packages('scales')

#LOAD DATAET ##########################################
df <-import("C:/Users/Adeyinka/Desktop/Learning/Ex_Files_Learning_R/Ex_Files_Learning_R/Exercise Files/data/StateData.xlsx")%>% 
  as_tibble() %>%
  select(state_code,
         psychRegions,
         instagram:modernDance) %>%
  mutate(psychRegions = as.factor(psychRegions)) %>%
  # rename(y = psychRegions)%>%
  
  print()

# AVERAGE VARIABLES ##############################

df %>%
  mutate(
  socialMedia = (instagram + facebook + retweet) / 3,
  artCrafts = (museum + scrapbook + modernDance) / 3
  ) %>%
  select(state_code, socialMedia, artCrafts)


# REVERSEE CODING################################

df %>%
  mutate(
    outgoing = (volunteering + (privacy *-1))/2
    ) %>%
  select(state_code, outgoing,volunteering,privacy)
