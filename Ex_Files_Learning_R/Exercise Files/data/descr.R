#Load Packages #######################
if (!require('pacman')) install.packages('pacman')

#Load library
pacman::p_load(tidyverse, pacman, party,psych, rio )
#pacman for loading/unpackaging library
#party for decision tree
#psych for statistical reason
#tidyverse for sstats

#Import XLSX from tidyverse
df <- import('StateData.xlsx')%>%
  as_tibble()%>%
  select(state_code, psychRegions,
         instagram:modernDance)%>%
  mutate(psychRegions = as.factor(psychRegions))%>%
  print()


#SUMMARY #############
df %>%
  summary()#for he entire table

df%>%
  select(entrepreneur)%>%   #for only entrepreneur
  summary()


#QUARTILE:USING TUKEY'S FIVE NUMBER SUMMASRY ########
fivenum(df$entrepreneur)

#BOXPLOT
boxplot(df$entrepreneur, horizontal = T, notch = T)
abline(v =0.05650, col = 'blue')
text(0.05650, 2, 'median', col='yellow')
boxplot.stats(df$entrepreneur)


#DESCRIPTIVE STATS
p_load(psych())
p_help(psych(), web = F)

describe(df$entrepreneur)
describe(df)
