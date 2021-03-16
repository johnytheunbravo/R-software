rm(list = ls() )
movies <- read.csv("moviesData.csv")
View(movies)
dim(movies) #rows col
hist(movies$runtime)
hist(movies$runtime,
     main = "Distribution of movies' length", #title
     xlab = "Runtime of movies", #label to x axis
     xlim = c(0,300), #range on x axis
     col = "blue",
     breaks = 4) #colour of bars
genreCount <- table(movies$genre)
View(genreCount)
pie(genreCount)
pie(genreCount,
    main = "Proportion of movies' genre",
    border = "blue",
    col = "orange")
moviesSub <- movies[1:20,]
barplot(moviesSub$imdb_rating,
       ylab = "IMDB rating",
       col = "blue",
       ylim = c(0,10),
       main = "Movies IMDB rating",
       names.arg = moviesSub$title,
       las = 2 ) #labels at 90
plot(x = movies$imdb_rating,
     y = movies$audience_score,
     xlab = "IMDB Rating",
     ylab = "Audience score",
     main = "IMDB rating vs audience score",
     xlim = c(0,10),
     ylim = c(0,100),
     col = "pink")
cor(movies$imdb_rating,
    movies$audience_score) #corelation coefficient (-1,1)

