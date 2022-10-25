




# INSTALL AND LOAD PACKAGES #############

# Install package manager
pacman::p_load(pacman, rio, tidyverse)


#LOAD DATAET ##########################################
df <-import("C:/Users/Adeyinka/Desktop/Learning/Ex_Files_Learning_R/Ex_Files_Learning_R/Exercise Files/data/StateData.xlsx")%>% 
  as_tibble() %>%
  select(state_code,
         psychRegions,
         instagram:modernDance) %>%
  mutate(psychRegions = as.factor(psychRegions)) %>%
  # rename(y = psychRegions)%>%
    
  print()

  
  # ANALYSE DATA ##############
# by using standardized object and vaariable

#cal clluster
hc <-df %>%
  dist %>%  #distance or dissimilarity
  hclust    #hierarchical cluster

# plot dendogram
hc %>% plot(label = df$state_code)

#dRRaw boxess
hc %>% rect.hclust(k = 2, border = 'gray80')
hc %>% rect.hclust(k = 3, border = 'gray60')
hc %>% rect.hclust(k = 4, border = 'gray40')

rm(list = ls())
