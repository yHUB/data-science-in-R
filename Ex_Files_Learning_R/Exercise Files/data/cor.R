#Load Packages #######################
if (!require('pacman')) install.packages('pacman')

#Load library
pacman::p_load(tidyverse, pacman, party,psych, rio )
#pacman for loading/unpackaging library
#party for decision tree
#psych for statistical reason
#tidyverse for sstats

library(datasets) #for example

#Import CSV from tidyverse
st <- import('StateData.xlsx')%>%
  as_tibble()%>%
  select(instagram:modernDance)%>%
  print()


#CORRELATION MATRIX #######
#COR()
cor(st)

st%>%
  cor()%>%
  round(2)


cor.test(st$mortgage, st$privacy)
#GET P VALUE

p_load(Hmisc())
# p_help(Hmisc,web = F)
st%>%
  as.matrix()%>%
  rcorr()
