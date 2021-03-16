getwd()
rm(list = ls() )
movies <- read.csv("MoviesData.csv")
x <- seq(-pi,pi,0.1)
y <- sin(x)
plot(x,y,
     main = "Plotting a sine curve",
     ylab = "sin(x)",
     type = "l",
     col = "blue" )
plot(x,y,
     main = "two graphs in one plot",
     ylab = "sin(x)",
     type = "l",
     col = "blue" )
lines(x,cos(x),
      col = "red")
legend("topleft",
       c("sin(x)","cos(x)"),
       fill = c("blue","red"))
install.packages("ggplot2")
library(ggplot2)
View(movies)
ggplot(data = movies,
       mapping = aes(x = critics_score,
                     y = audience_score,
       color = genre)) +
geom_point()
?ggsave
str(movies$mpaa_rating)
levels(movies$mpaa_rating)
movies$mpaa_rating <- factor(movies$mpaa_rating)
str(movies$mpaa_rating)
levels(movies$mpaa_rating)
ggplot(data = movies,
       mapping = aes(x = mpaa_rating,
       fill = genre)) +
  geom_bar() +
  labs(y = "rating count",
       title = "count of mpaa rating")
ggplot(data = movies,
       mapping = aes(x=runtime)) +
  geom_histogram() +
  labs(x = "Runtime of movies",
       title = "Distribution of runtime")
