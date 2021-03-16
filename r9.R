rm(list = ls() )
captaincy <- read.csv("CaptaincyData.csv")
View(captaincy)
subData <- captaincy[1:3, c("played","won","lost")]
matrixA <- as.matrix(subData)
myVector <- c(1:5)
myList <- list(captaincy,matrixA,myVector)
names(myList) <- c("dataframe","matrix","vector")
print(myList)
myList$dataframe
myList[2]
myList[[2]][,3]
listSimple <- c("one","two","three")
merged.list <- c(myList,listSimple)
print(merged.list)