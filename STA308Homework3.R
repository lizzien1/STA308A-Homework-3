## Lizzie Nankervis
## Homework 3: Guess The Number
## STA308 A

GuessTheNumber <- function(lower = 0, upper = 10, seed = NULL){ # creating the function with the parameters lower and upper defaulting to 0 and 10, NULL for random in seed
  if(!is.numeric(lower)||!is.numeric(upper)){ # if either lower or upper is not numeric
    stop("Lower and upper must be integers.") # stopping the game (loop) sending an error message if the input for lower and upper are not integers
  }
  if (lower>=upper){ # if the number for lower is larger than upper
    stop("Lower must be smaller than upper.") # stop the game (loop) if the numbers entered do not follow the rule of the lower number being less than the upper number
  }
  set.seed(seed) # setting the seed to the given seed (NULL for random)
  RandomNumber <- round(runif(n=1, min = lower, max = upper)) # generated random number between lower and upper if the upper and lower meet the rules
  Guesses <- c() # creating an empty vector to store Guesses before they are made
  while(TRUE){ # use while loop to run game
    Guess <- as.numeric(readline("Enter a number: ")) # prompt user to enter a number using readline() 
    Guesses <- append(Guesses, Guess) # add guesses done in game to Guesses vector to output at end
    if (Guess < RandomNumber){ 
      print("Too Low") # if the guess is less than the randomly generated number, print Too Low to guess again
    }
    if (Guess > RandomNumber){
      print("Too High") # if the guess is higher than the randomly generated number, print Too High to guess again
    }
    if (Guess == RandomNumber){ # if the guess matches the randomly generated number
      print("You Got It!!") # print You Got It!! to end the game
      NumGuesses <- length(Guesses) # to get the number of guesses, use the total length of the Guesses vector
      cat("It took you", NumGuesses, "guesses to get the correct number.\n") # use cat to create a string of number guesses and print how many guesses it took to get correct number
      return(list(RandomNumber = RandomNumber, NumGuesses = NumGuesses, Guesses = Guesses)) # return the list of the Random Number, Number of Guesses, and Guesses
    }
  }
}



