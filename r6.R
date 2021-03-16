rm(list = ls() ) #remove exiting variables
#declare a variable to store the data frame
captaincy = read.csv("CaptaincyData.csv")
View(captaincy)
subdata <- captaincy[1:3,
                     c("played","won","lost")] #first 3
matrixA <- as.matrix(subdata)
print(matrixA)
values <- c(1,0,0,0,1,0,0,0,1)
matrixB <- matrix(values,nrow = 3,ncol = 3,
                  byrow = TRUE) #data is arranged row wise
print(matrixB)
matrixA + matrixB
matrixA - matrixB
matrixA * matrixB
matrixA %*% matrixB 
t(matrixA)
det(matrixA)
solve(matrixA)
#calculating sum using for loop
startTime <- Sys.time()
totalSum <- 0
for(i in 1:3) {
  for (j in 1:3) {
  totalSum <- totalSum + matrixA[i,j]
  }
}
print(totalSum)
endTime <- Sys.time()
endTime - startTime
#calculating sum using in built function
startTime <- Sys.time()
sum(matrixA)
endTime <- Sys.time()
endTime - startTime
rowSums(matrixA)
colSums(matrixA)
#add new row
captaincy <- rbind(captaincy,
                   data.frame(names = "Kohli",
                              Y= 2016,
                              played = 30,
                              won = 20,
                              lost = 9,
                              victory = 20/30))
View(captaincy)
#add new column
defeat <- captaincy$lost/captaincy$played
captaincy <- cbind(captaincy,defeat)
View(captaincy)