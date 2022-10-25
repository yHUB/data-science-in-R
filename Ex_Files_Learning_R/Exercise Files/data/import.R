#Load packages ########################

if (!require('pacman')) install.packages('pacman')

pacman::p_load(pacman, tidverse, rio, party, psych)

#Import CSV file readr::read_csv() from tidyverse
df <- read.csv('StateData.csv')
df

#Import other formaat with rio::import() from rio
(df <- import('StateData.xlsx') %>% as_tibble())

#or

df <- import('StateData.xlsx')%>% as_tibble()%>%
    select(state_code,
           psychRegions, 
           instagram: modernDance)%>%
    mutate(psychRegions = as.factor(psychRegions))%>%
    rename(y = psychRegions)%>%
    print()

#ANALYSING THE DATASET########
#By standardising object and variable name
