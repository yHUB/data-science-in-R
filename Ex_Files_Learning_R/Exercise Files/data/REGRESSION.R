# Install package manager
pacman::p_load(pacman, rio, tidyverse)


#LOAD DATAET ##########################################
df <-import("StateData.xlsx")%>% 
  as_tibble() %>%
  select( instagram:modernDance) %>%
  #mutate(psychRegions = as.factor(psychRegions)) %>%
  # rename(y = psychRegions)%>%
  print()

#SCATTERPLOT #####################

df %>% 
  select(instagram:modernDance) %>%
  plot()

df %>%
  select(museum, volunteering) %>%
  plot()
# ADD REGRESSION LINE

lm(df$volunteering ~ df$museum) %>%
  abline()


#BIVARITE REGRESSION
fit1 <-lm(df$volunteering ~ df$museum)
fit1
summary(fit1)


# confidence interval
confint(fit1)


#predict
predict(fit1)

#predict intervals for values of volunteering
predict(fit1, interval = 'prediction')

#REgression diagnostics
lm.influence(fit1)
influence.measures(fit1)


#MULTIPLE REGRESSION ######################################
df %>%
  select(volunteering, everything()) %>%
  print()

lm(df)

#Identify outcome
lm(volunteering ~., data = df)

#identify entire model
lm(volunteering ~ instagram + facebook + retweet + entrepreneur
   + gdpr + privacy + university + mortgage + museum + scrapbook+modernDance, data = df)

#Save
fit2 <-lm(df)

summary(fit2)

#Confidence interval
confint(fit2)

#Predict values
predict(fit2)

#predivt intervals
predict(fit2, interval = 'prediction')
lm.influence(fit2)
influence.measures(fit2)

rm(list = lS())
