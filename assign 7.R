#Tanishi Gupta 19/888
#ques- Consider 2 vectors c(9,10,11,12) and c(13,14,15,16).
#Create a 4 by 2 matrix from these two vectors.
vectorOne <- c(9,10,11,12)
vectorTwo <- c(13,14,15,16)
m <- matrix(c(vectorOne,vectorTwo),ncol = 2)
print(m)