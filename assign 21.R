#Tanishi Gupta 19/888
#1. Use the built-in data set iris. 
#Using the pipe operator, group the flowers by their Species.
install.packages("dplyr")
library(dplyr)
data("iris")
head(iris)
View(iris)
irisSpecies <- group_by(iris,
                        Species)
#2. Summarise the grouped data by the mean of Sepal.Length and Sepal.Width.
summarise(irisSpecies,
          mean(Sepal.Length),
          mean(Sepal.Width))