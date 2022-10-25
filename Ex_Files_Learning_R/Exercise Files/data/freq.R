#Load Packages #######################
if (!require('pacman')) install.packages('pacman')

#Load library
pacman::p_load(tidyverse, pacman, party,psych, rio )
#pacman for loading/unpackaging library
#party for decision tree
#psych for statistical reason
#tidyverse for sstats

library(datasets) #for example

#Import XLSX from tidyverse
df <- import('StateData.xlsx')%>%
  as_tibble()%>%
  select(state_code, psychRegions,
         region)%>%
  mutate(psychRegions = as.factor(psychRegions))%>%
  print()

summary(df)

#NEW VARIABLES #####
df%>%
  select(region)%>%
  summary()    #not that useful output

df%>%
  select(region)%>%
  table()

df%>%
  select(psychRegions)%>%
  summary()  #for frequency for factors olnly

df%>%
  select(psychRegions)%>%
  table()
df%>%
  mutate(region = as.factor(region))%>%
  mutate(psychRegions = as.factor(psychRegions))%>%
  print()

summary(df)
