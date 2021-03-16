getwd()
rm(ls() )
movies <- read.csv("moviesData.csv")
View(movies)
summarise(movies,
          mean(imdb_rating))
groupMovies <- group_by(movies,
                        genre)
summarise(groupMovies,
          mean(imdb_rating))
dramaMov <- filter(movies,
                   genre == "Drama")
gr_dramaMov <- group_by(dramaMov,
                        mpaa_rating)
summarise(gr_dramaMov,
          mean(imdb_rating))
movies %>% filter(genre == "Drama") %>%
  group_by(mpaa_rating) %>%
  summarise(mean(imdb_rating))
movies %>% mutate(diff = audience_score - 
                    critics_score) %>% 
  ggplot(mapping = aes(x = genre,
                       y = diff)) +
  geom_boxplot()
movies %>% group_by(genre,mpaa_rating)%>%
  summarise(num = n())
