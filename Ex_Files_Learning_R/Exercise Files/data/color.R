#Load Dataset ########

a <- c(24, 13, 5 ,6, 10, 7)      #sample dataset
barplot(a)

#COLOUR IN R################
?colors
colors()

#Using colors
b <- a%>%
  barplot(col='red')%>%
  print()   #red

b <- a%>%
  barplot(col='yellow')%>%
  print()

#Using RGB
b <- a%>%
  barplot(col=rgb(0.8,0, 0))%>%
  print()

b <- a%>%
  barplot(col=rgb(.62, .71,0))%>%
  print()


#RGB hexdecimal
b <- a%>%
  barplot(col=c('#fff000','#aaa000'))%>%
  print()
  
  