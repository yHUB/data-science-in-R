

#INSTALL AND LOAD PACKAGES #############

# Install pacman:: package manager
if(!require('pacman')) install.packages('pacman')

# LOAD DATA ########################

x <- c(24, 13, 7, 5, 3, 2)  #SAMPLE DATA
barplot(x)

# COLOURS IN R #########################

#Colour namess haas 657 colour name
?colors
colors()   #LIST OF COLOR NAMES


#BROWSE COLLORS
browseURL('https://datalab.cc/rcolors')

#USE COLORS #######################

# Color names
barplot(x, col = 'red3')
barplot(x, col = 'slategray')

# RGB (0.0-1.0)
barplot(x, col =  rgb(.80, 0, 0))
barplot(x, col = rgb(.62, .50, .90))

# RGB (0-255)
barplot(x, col = rgb(200,0, 0, max=255))
barplot(x, col = rgb(100,0 ,0, max=255))        

#RGB hexcodes
barplot(x, col = '#1111111')
barplot(x, col = '#FFFFFFF')

#index number
barplot(x, col = colors()[555]) 
barplot(x, col = colors()[200])  


# MULTIPLE COLORS
barplot(x, col = c('white', 'black'))
barplot(x, col = c('red', 'cyan'))


# using palettes ############
?palette
palette()  

barplot(x, col = 1:6)          
barplot(x, col = rainbow(6))         
barplot(x, heat.colors(1))          
barplot(x, col = terrain.colors(6))


rm(list = ls())
