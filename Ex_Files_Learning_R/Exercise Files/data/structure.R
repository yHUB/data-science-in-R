

#Matrix ######

mat <- matrix(c(1,2,3,4),nrow = 2, byrow = F)
mat

mar <- matrix(c(1:24),c(4,3,2))
mar


#ARRAY #####
arr <- array(c(1:24), c(4,2,24))
arr


#DATAFRAME#######

#Combine vectors of the same length
vNumeric <- c(1,2,3)
vChar <- c('a','b','c')
vLogi <- c(T,T,F,F)

df1 <-cbind(vNumeric,vChar,vLogi)
df1
typeof(df1)

#Number can a dataframe of different types
df2 <- as.data.frame(cbind(vNumeric, vChar, vLogi))
df2
typeof(df2)

df3 <-as.data.frame(cbind(df2))
df3
