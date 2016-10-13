# Exercise 2: Creating data frames

# Create a vector of the number of points the Seahawks have scored in each game this season (google "Seahawks")
ps <- c(12, 3, 37, 27)

# Create a vector of the number of points the Seahwaks have allowed to be scored against them in each game this season
pa <- c(10, 9, 18, 17)

# Combine your two vectors into a dataframe
game.results <- data.frame(ps,pa)

# Create a new column "diff" that is the difference in points
game.results$diff <- game.results$ps - game.results$pa

# Create a new column "won" which is TRUE if the Seahawks wom
game.results$won <- game.results$diff > 0

# Create a vector of the opponents
opp <- c('Dolphins', 'Rams', '49ers', 'Jets')

# Assign your dataframe rownames of their opponents
rownames(game.results) <- opp
