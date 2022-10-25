


# INSTALL AND LOAD PACKAGES #################
# pacman packages
pacman::p_load(pacman, tidyvesrse)


#LOAD DATA##############
#usinf diamond dataset from ggplot2
?diamonds
diamonds


#BARPLOT OF FREQUENCIES #########################
 ?plot
?barplot

# Shortest method
plot(diamonds$cut)

# SIMILAR FOR PIPES
diamonds %>%
  select(color)%>%
  plot()


#using barplot() nbut table must be ADDED
diamonds %>%
  select(clarity) %>%
  table() %>%
  barplot()


#Descending Bar using sort()
diamonds %>% 
  select(clarity) %>%
  table() %>%
  sort(decreasing = T) %>%
  barplot(col = 'red')

# Add options to plot
diamonds %>%
  select(clarity) %>%
  table() %>%
  barplot(
    main ='Clarity of Diamonds.',
    sub = '(Source : ggplot2:: diamonds)',
    horiz = T,
    ylab = 'Clarity of Diamond',
    xlab = "Frequency",
    xlim = c(0, 15000),
    border = NA,
    
    col = 'red'
)

  #Stacked bar
diamonds %>%
  select(color, clarity) %>%
  plot()

# Stacked bar step 1: Create table
df <- diamonds %>%
  select(color, clarity) %>%
  table()  %>%
  print()

# step2: create graph
df  %>%
  barplot(legend = rownames(.))

  # side by side# 
df %>%
  barplot(
    legend = rownames(.),
    
  )
rm(list = ls())
#  side by side
df %>%
  barplot(
    legend = rownames(.),
    beside =T
  )
