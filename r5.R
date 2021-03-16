# Declare a variable to store the data set
captaincy <- read.csv("CaptaincyData.csv") 

# View the stored data set 
View(captaincy)
captaincy[3,] #for row 
captaincy[3] # for column
captaincy[c(2,3),]
#logical indexing - getting specific data
captaincy[captaincy$played==25,]
captaincy[1]
captaincy["names"] #name indexing
captaincy[c("names","won")]
#slicing editor frame - specific condition
subData <- subset(captaincy,victory>0.3,
                  select = c("names","played","won"))
print(subData)
captaincy[[4]][3] # 4 column, 3 row
