library(dplyr)
#Tanishi Gupta 19/888
#1. Use the built-in data set airquality. Using select function, select the variables Ozone,
#Wind, and Temp in this data set.
install.packages("dplyr")
data("airquality")
head(airquality)
View(airquality)
airqualityOWT <- select(airquality,
                        Ozone,
                        Wind,
                        Temp)
View(airqualityOWT)
# 2. Use the built-in data set mtcars. Rename the variables mpg and cyl with MilesPerGallon
#and Cylinder, respectively.
data("mtcars")
head(mtcars)
View(mtcars)
mtcarsNN <- rename(mtcars,
                   MilesPerGallon = "mpg",
                   Cylinder = "cyl")
View(mtcarsNN)