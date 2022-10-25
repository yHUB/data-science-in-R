 # LOAD AND INSTALL PACKAGES ######
pacman::p_load(pacman, tidyverse, rio)


#DATASET ######
df <-import('StateData.xlsx')%>%
  as_tibble()%>%
  select(psychRegions,
         instagram:modernDance)%>%
  mutate(psychRegions = as.factor(psychRegions))%>%
  print()
  
#FILTER
df%>%
  filter(entrepreneur >1)%>%
  print()
# 
df %>%
  filter(region == "South") %>%
  print()

df%>%
  filter(psychRegions == 'Friendly and Conventional')%>%
  print()

df%>%
  filter(entrepreneur <1 | psychRegions == 'Relaxed and Creative')%>%
  print()

df%>%
  filter(entrepreneur < 1 &  psychRegions == 'Friendly and conventional' )%>%
  print()
