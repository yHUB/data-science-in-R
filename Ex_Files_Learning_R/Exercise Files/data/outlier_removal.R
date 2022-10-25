

#LOAD AND INSTALL PACKAGES############
#INSTALL PACKAGE
pacman::p_load(pacman, rio, tidyverse)

#LOAD DATASET #######
#DATASET

df <- import("StateData.xlsx") %>%
  as_tibble() %>%
  select(state_code, 
         psychRegions,
         instagram:modernDance) %>% 
  mutate(psychRegions = as.factor(psychRegions)) %>%
  print

#SCATTERPLOT #######
df %>%
  select(instagram:modernDance)%>%
  plot()

#BIVARIATE SCATTTER PLOT WITH DEFAUDLT
df %>%
  select(scrapbook:modernDance)%>%
  plot()

#WITH OPTIONS
df %>%
  select(scrapbook:modernDance)%>%
  plot( 
         main= 'Scatterplot of Google search by State',
         xlab = 'Searches for Scrapbook',
         ylab ='Searches by moldernDance',
         col = rgb(.7,0.2,.5),
         pch = 8)     #Plotting character
?pch

#ADDING REGRESSION LINE#####
 
df%>%
  lm(scrapbook ~ modernDance, data = .)%>%
  abline()
?abline

#IDENTIFY OUTLIERS #######
df%>%
  select(state_code,  scrapbook)%>%
  filter(scrapbook >4)%>%
  print()

#without outlier
df%>%
  select(state_code:modernDance)%>%
  filter(scrapbook < 4)%>%
  plot(
    main = 'Scatterlot by Google search'
  )

#REMOVING OUTLIERS
df%>%
  select(scrapbook:modernDance)%>%
  filter(scrapbook <4)%>%
  plot(
    main='Scatterplot by gooole search'
  )

df%>%
  filter(scrapbook <4)%>%
  lm(modernDance ~ scrapbook, data = .)%>%
  abline()
