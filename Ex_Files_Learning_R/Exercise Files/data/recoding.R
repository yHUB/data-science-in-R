# INSTALL AND LOAD PACKAGES #############

# Install package manager
pacman::p_load(pacman, rio, tidyverse)


#LOAD DATAET ##########################################
df <-import("C:/UserDs/Adeyinka/Desktop/Learning/Ex_Files_Learning_R/Ex_Files_Learning_R/Exercise Files/data/StateData.xlsx")%>% 
  as_tibble() %>%
  select(state_code,
         psychRegions,
         instagram:modernDance) %>%
  mutate(psychRegions = as.factor(psychRegions)) %>%
  # rename(y = psychRegions)%>%
  
  print()


# CREATE CARTEGORIES WITH CASE WHEN ##################
df %>%
  mutate(relaxed =recode(psychRegions,
         "Relaxed and Creative" = "yes",
         "Friendly and Conventional" = "no",
         .default = "no")) %>%
  select(state_code, psychRegions,relaxed)


#CASE 1
df2 <- df %>% 
  mutate(likeArts = case_when(
  museum > 1| scrapbook>1 | modernDance >1 ~ "YES",
  TRUE ~"NO"  ))


df2 %>%
  select(state_code, likeArts, museum:modernDance) %>%
  arrange(desc(likeArts)) %>%
  print(n = Inf)

rm(list = ls())
