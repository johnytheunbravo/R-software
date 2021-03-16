#Tanishi Gupta 19/888
#Using built-in data set mtcars, draw a bar chart from the object cyl.
data("mtcars")
head(mtcars)
View(mtcars)
barplot(mtcars$cyl)
#Add suitable labels to this bar chart.
barplot(mtcars$cyl,
        xlab="count",
        ylab="count",
        col="blue",
        ylim=c(0,10),
        main="Bar Chart - mtcars")