library(dplyr)
getwd()
rm(ls() )
movies <- read.csv("moviesData.csv")
View(movies)
install.packages("dplyr")
moviesComedy <- filter(movies,
                       genre == "Comedy")
View(moviesComedy)
moviesComDr <- filter(movies,
                       genre == "Comedy" |
                         genre == "Drama")
View(moviesComDr)
moviesComDrP <- filter(movies,
                       genre %in% #valuematching
                         c("Comedy","Drama"))
View(moviesComDrP)
moviesComIm <- filter(movies,
                      genre == "Comedy" &
                      imdb_rating >=7.5)
View(moviesComIm)
moviesImA <- arrange(movies,
                     imdb_rating)
View(moviesImA)
moviesImD <- arrange(movies,
                     desc(imdb_rating))
View(moviesImD)
moviesGeIm <- arrange(movies,
                      genre,
                      imdb_rating)
View(moviesGeIm)
moviesTGI <- select(movies,
                    title,genre,
                    imdb_rating)
View(moviesTGI)
moviesTHT <- select(movies, title,
                starts_with("thtr"))
View(moviesTHT)
moviesR <- rename(movies,
                  rel_year = "thtr_rel_year")
View(moviesR)
moviesLess <- select(movies,
                     title:audience_score)
moviesMu <- mutate(moviesLess,
                   CriAud = critics_score - 
                     audience_score)
View(moviesMu)