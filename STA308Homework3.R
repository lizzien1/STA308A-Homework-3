## Lizzie Nankervis
## Homework 3
## STA308 A
## this is a try
GuessTheNumber <- function(lower = 0, upper = 10, seed = NULL){
  if(!is.numeric(lower)||!is.numeric(upper)){
    stop("Lower and upper must be integers.")
  }
  if (lower>=upper){
    stop("Lower must be smaller than upper.")
  }
  set.seed(seed)
  RandomNumber <- round(runif(n=1, min = lower, max = upper))
  Guesses <- c()
  while(TRUE){
    Guess <- as.numeric(readline("Enter a number: "))
    Guesses <- append(Guesses, Guess)
    if (Guess < RandomNumber){
      print("Too Low")
    }
    if (Guess > RandomNumber){
      print("Too High")
    }
    if (Guess == RandomNumber){
      print("You Got It!!")
      NumGuesses <- length(Guesses)
      cat("It took you", NumGuesses, "guesses to get the correct number.\n")
      return(list(RandomNumber = RandomNumber, NumGuesses = NumGuesses, Guesses = Guesses))
    }
  }
}



