#Tanishi Gupta 19/888
#ques- To the previous matrix, 
#add another vector c(17,18,19,20) as a column
x <- c(9,10,11,12)
y <- c(13,14,15,16)
m <- matrix(c(x,y),ncol = 2)
print(m)
z <- c(17,18,19,20)
cbind(m,c(17,18,19,20))