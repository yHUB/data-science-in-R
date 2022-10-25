#Load package#######

pacman::p_load(tidyverse, pacman)

#Visualisation #######
?plot
?barplot


#Load dataset ########
?diamonds
diamonds

#plot
plot(diamonds$cut)

diamonds %>%
  select(color )%>%
  plot()

diamonds %>%
  select(cut)%>%
  plot()

diamonds %>%
  select(clarity )%>%
  plot() 

diamonds %>%
  select(clarity )%>%
  table()%>%
  barplot()

#SORT
diamonds %>%
  select(clarity )%>%
  table()%>%
  sort(decreasing = T)%>%
  # col= 'red'%>%
  barplot()

diamonds %>%
  select(clarity )%>%
  table()%>%
  sort(decreasing = T)%>%
  barplot(
    main='Clarity of Diamonds',
    sub='source :ggplot2::diamonds',
    ylab='Frequency',
    xlab='Clarity of Diamonds',
    border = NA,
    # xlim=c(0,15000),
    col = 'yellow'
   )

#Stacked bar
diamonds %>%
  select(clarity, cut )%>%
  table()%>%
  print()%>%
  barplot()

df<-diamonds %>%
  select(color, clarity)%>%
  table()%>%
  print()%>%
  # barplot()
  
#Making a stacked bar: step 1
df %>%
  barplot(legend = rownames(.))

#Side by side bar    
df %>%
  barplot(legend = rownames(.),
          beside = T)
