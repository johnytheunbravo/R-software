testData <- TRUE
class(testData)
testData <- "TRUE"
class(testData)
testData <- 12
class(testData)
testData <- 12.5
class(testData)
testData <- as.integer(12)
class(testData)
testData <- 12L
class(testData)
rm(list = ls() )
captaincy <- read.csv("CaptaincyData.csv")
View(captaincy)
captaincytwo <- read.csv("CaptaincyData2.csv")
captaincy <- merge(captaincy,captaincytwo,
                   by = "names")
View(captaincy)
str(captaincy)
print(captaincy$names)
captaincy$names <- as.character(captaincy$names)
str(captaincy)
captaincy$formats <- factor(captaincy$formats)
str(captaincy)
levels(captaincy$formats)
levels(captaincy$formats) <- c("one","two","three")
print(captaincy$formats)