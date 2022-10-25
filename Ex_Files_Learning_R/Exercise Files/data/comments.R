


#INSTALL AND LOAD THE PACKAGES ################

# LOAD DATASET
library(datasets)

#PREPARE DATASET ###################
?iris
df <- iris
head(df)


#use comments to disable command ######################
hist(df$Sepal.Width,
     col = 'red', #white
     # border = NA #no borders,
     main = 'Histogram of Sepal width',
     xlab = 'Sepal width in cm')
