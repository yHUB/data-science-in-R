

# INSTALL AND LOAD PACKAGES #############

# Install package manager
pacman::p_load(pacman, rio, tidyverse)

#Load base package manually
library(datasets)


#SINGLE TIME SERIES ####################


#uspop
?uspop
uspop
 #Plot withdefault
plot(uspop)

# Plot with options
uspop %>%
  plot(
    main = 'US Population 1790-1970',
    xlab = 'Year',
    ylab = 'Population in million',
  )
abline(v = 1930, col = 'lightgray')
text(1930,  10, '1930', col = 'red')
abline(v = 1940,col = 'lightgray')
text(1940,  2, '1940', col = 'red')

# Plot with ts.plot()
?ts.plot
ts.plot(uspop)

#Plot with the powerful plot.ts()
?plot.ts
plot.ts(uspop)

# MULTIPLE TIME SRIES ######################################

#EuStockMarkets
?EuStockMarkets
EuStockMarkets

# 3 plots
plot(EuStockMarkets)
ts.plot(EuStockMarkets)
plot.ts(EuStockMarkets) 

rm(list = ls())
