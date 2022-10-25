

# INSTALL AND LOAD PACKAGES #############

# Install package manager
pacman::p_load(pacman, rio, tidyverse)

#LOAD AND PREPARE DDATA ################
df <- import('C:/Users/Adeyinka/Desktop/Learning/Ex_Files_Learning_R/Ex_Files_Learning_R/Exercise/data/StateData.csv') %>%
  as_tibble() %>%
  select(state_code,
         psychRegions,
         instagram:modernDance) %>%
  mutate(psychRegions = as.factor(psychRegions)) %>%
  print()


# SCATTERPLOTS ########################################
df <- %>%
  select((instagram:mordernDdance)) %>%
  plot()

#Bivarite scatterplot with defaults
df %>%
  select(scrapbook:mordernDance) %>%
  plot()

#Bivarite scatteerplot with defaults

df <-%>%
  select(scrapbook:modernDance) %>%
  plot( 
    main = 'Scatterplot of  Google search by state',
    xlab = 'searches for"\scrapbook"',
    ylab = 'searches for "\mordern dance\"',
    col = 'gray',
    pch= 15
  )
?pch

# add fit linear regression
df %>%
  lm(mordernDance:scrapbook, data =.) %>% 
  abline()

# REMOVE OUTLIER #######################
df <- %>%
  select(state_code, scrapebook) %>%
filter(scrapebook > 4)%>%
print()


#Bivarite scatterplot without outlier
df <- %>%
  select(sscrapebook:mordernDance) %>%
  filter(scrapebook < 4) %>%
  plot(
    main = '',
    xlab
  )


