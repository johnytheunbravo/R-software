#Tanishi Gupta 19/888
#Consider the built-in data set mtcars. Find the cars with hp greater than 100 and cyl
#equal to 3.
install.packages("dplyr")
library(dplyr)
data("mtcars")
head(mtcars)
View(mtcars)
mtcarsGrp <- subset(mtcars, hp > 100 & cyl == 3)
View(mtcarsGrp)
# no such cars are present in the data 
#Arrange the mtcars data set based on mpg variable.
mtcarsGrp <- <- arrange(mtcars,
                        mpg)
View(mtcarsGrp)