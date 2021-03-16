sample<-c(-2,1,5,8)
sample
names <- c("mahi","saurav","azhar","sunny","pataudi","dravid")
names
played <- c(45,49,47,47,40,25)
won <- c(22,21,14,9,9,8)
lost <- c(12,13,14,8,19,6)
Y <- c(2012,2004,2000,1980,1965,2008)
captaincy <- data.frame(names,Y,played,won,lost)
View(captaincy)
captaincy$names
captaincy$played
captaincy$won
ratio <- captaincy$won/captaincy$played
captaincy$victory <- ratio
View(captaincy)
mean(captaincy$played)
(45+49++47+47+40+25)/6
plot(captaincy$played,ratio)
plot(captaincy$names,capptaincy$played)
write.csv(captaincy,"newcaptaincy.csv")