# INSTALL AND LOAD PACKAGES######

#PACKAGES

pacman::p_load(tidyverse, pacman, rio)

#LOAD AND READ DATASET ######
library(datasets)
?uspop
uspop



#TIME SERIES #############
?ts

#Plot with default
plot(uspop)

#Plot with option
uspop%>%
  plot(
    main= 'US POPULATION',
    xlab = 'Year',
    ylab = 'population'
    )
?abline()
abline(v = 1930, h= 130, col=c('red','yellow'))
text(1930, 10, '1930', col= 'yellow')
abline(v = 1950, col='red')
text(1950, 10,'1950',col='red')

#TIME SERIES PLOT #######
#using ts.plot
?ts.plot
ts.plot(uspop)

#using plot.ts()
?plot.ts
plot.ts(uspop)

#dataset
?EuStockMarkets
EuStockMarkets
# Three differernt plot
plot(EuStockMarkets)


plot.ts(EuStockMarkets)
abline(v = 1997, col='red')
text(1997, 20, '1997', col='lightgray')
ts.plot(EuStockMarkets)
abline(v = 1997,h=6100, color='red')
text(1997, 10, '1997',col =' yellow')
