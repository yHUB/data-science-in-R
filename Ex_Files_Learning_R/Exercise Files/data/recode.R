# LOAD AND INSTALL PACKAGES #######
pacman::p_load(pacman, tidyverse, rio, party)

#DATASET ######
df <- import('StateData.xlsx')%>%
  as_tibble()%>%
  select(state_code,
         psychRegions,
         instagram:modernDance)%>%
  mutate(psychRegions = as.factor(psychRegions))%>%
  print()


#RECODING
df%>%
  mutate(mood = recode(psychRegions, 'Friendly and Creative' = 'yes',
                       'Relaxed and Creative' = 'no',
                       .default = 'otherwise'))%>%
  select(state_code,psychRegions, mood)%>%
  print()


#CASE_WHEN:multiple sccenario
df2 <-df%>%
  mutate(likeArts = case_when
         (museum >1|scrapbook >1| modernDance >1 ~ 'yes', TRUE ~'no'))
df2%>%
  select(state_code,likeArts,museum:modernDance)%>%
  arrange(desc(likeArts))%>%
  print(Inf)
