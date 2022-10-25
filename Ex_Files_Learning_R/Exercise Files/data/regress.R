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
  select(instagram:modernDance)%>%
  print()

df%>%
  select(instagram:modernDance)%>%
  plot()

df%>%
  select(museum, privacy)%>%
  plot()

df%>%
  select(volunteering, museum)%>%
  plot()

#LINEAR REGRESSION LIINE
lm(df$volunteering ~ df$museum, data = df)%>%
  abline()

#REGRESSION #####
fit1 <- lm(df$volunteering ~ df$museum, data = df)


fit1

summary(fit1)

#Confidence inteerval
confint(fit1)

#pPRWEDICTED

predict(fit1)

#REGRESSION DIAGNOSTIC
lm.influence(fit1)
influence.measures(fit1)
