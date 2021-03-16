getwd()
rm(ls() )
movies <- read.csv("moviesData.csv")
View(movies)
#match btw aus and in
inScore <- c(320,260,240)
ausScore <- c(280,268,240)
if(inScore[1] > ausScore[1]){
  print("India won the first ODI!")
}
if(inScore[2] > ausScore[2]){
  print("India won the second ODI!")
} else {
  print("Australia won the second ODI!")
}
ifelse(inScore[2] > ausScore[2],
       "India won the second ODI!",
       "Australia won the second ODI!")
if(inScore[3]> ausScore[3]) {
  print("India won the third ODI!")
}else if(inScore[3] == ausScore[3]){
  print("Third ODI was a tie,")
} else {print("Australia won teh third ODI!")}
movies$dev <- ifelse(movies$audience_score >
                       movies$critics_score,1,0)
View(movies)
sum(ifelse(movies$audience_score >
             movies$critics_score,1,0))
#USER DEFINED FUNCTIONS
sampleVec <- c(1:6)
summary(sampleVec)
permutation <- function(a,b){
  factorial(a)/factorial(a-b)
}
permutation(5,2)
votingEligibility <- function(){
  age <- as.integer(readline("Enter your age: "))
  if(age < 18){
    print("You cannot cast your vote.")
  }else {print("You can cast your vote.")}
}
votingEligibility()
sum_between_two <- function(num1,num2){
  result <- 0
  for (i in num1:num2) {
    result <- result+i
 } 
  return(result)
}
sum_between_two(2,6)
