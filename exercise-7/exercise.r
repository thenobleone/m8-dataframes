# Exercise 7: Husky Football 2015 Season


# Read in the Husky Football 2015 game data into a variable called `husky.games.2015`
setwd('~/Desktop/Info 200/m8-dataframes/exercise-7/')
husky.games.2015 <- read.csv('data/huskies_2015.csv')

# Create a vector of the teams that the Huskies played against during that season
# Call this vector `not.huskies`. You'll need to convert this column to a vector
not.huskies <- as.vector(husky.games.2015$opponents)

# Create a vector of the their final scores for the games
# Call this variable `husky.scores`
husky.score <- husky.games.2015$uw_score
  
# Create 2 variables called `rushing.yards` and `passing.yards` to represent the yards the Huskies rushed and passed
rushing.yards <- husky.games.2015$rushing_yards
passing.yards <- husky.games.2015$passing_yards

# Create a variabled called `combined.yards` that is the total yardage of the Huskies for each game
combined.yards <- rushing.yards + passing.yards

# What is the score of the game where the Huskies had the most combined yards?
most.yards.score <- husky.score[combined.yards == max(combined.yards)]


# Write a function `MostYardsScore` that takes in a dataframe parameter `games` and returns a descriptive sentence
# about the game that was played that had the most yards scored in it.
# Take note of the steps from above including the opposing team, score, and date the game was played
MostYardsScore <- function (game){
  
  passing <- game$passing_yards
  rushing <- game$rushing_yards
  max.total.offense <- max(passing + rushing)
  max.game <- which (max.total.offense == game$passing_yards + game$rushing_yards)
  
  date <- game$date[max.game]
  opp <- game$opponent[max.game]
  score <- game$uw_score[max.game]
  
  return (sprintf("In 2015 the Huskies genereated the most offense against %s, on %s, totaling %d yards of offense and putting up a score of %d points.", opp, date, max.total.offense, score))
}

MostYardsScore(husky.games.2015)

# What was the highest yardage game so far this season?
# Hint: Read in the dataset titled `huskies_2016.csv` and save it as a variable

husky.games.2016 <- read.csv('data/huskies_2016.csv')
most.offense.2016 <- max(husky.games.2016$rushing_yards) + max(husky.games.2016$passing_yards)
paste(most.offense.2016)
