#Load Packages #######################
if (!require('pacman')) install.packages('pacman')

#Load library######
pacman::p_load(tidyverse, pacman, party,psych, rio )
#pacman for loading/unpackaging library
#party for decision tree
#psych for statistical reason
#tidyverse for sstats

library(datasets) #for example

#Import CSV from tidyverse ######
st <- import('StateData.xlsx')%>%
  as_tibble()%>%
  select(state_code, region, psychRegions)%>%
  mutate(psychRegions = as.factor(psychRegions))%>%
  print()

#ANALYSE DATASET
ct <- table(st$region, st$psychRegions)
ct

#TO GET ARITHMETIC ALAIISES ######
p_load(magrittr())

#ROW PERCENTAGE
ct%>%
  prop.table(1)%>%
  round(2)%>%
  multiply_by(100)

# COLUMN PERCEENTAGE
ct%>%
  prop.table(2)%>%
  round(2)%>%
  multiply_by(100)

#total peercentages
ct%>%
  prop.table()%>%
  round(2)%>%
  multiply_by(100)

#chi squarre distribution
tchi <-  chisq.test(ct)
tchi

#other chisquare
tchi$observed
tchi$residuals
tchi$expected
tchi$stdres
