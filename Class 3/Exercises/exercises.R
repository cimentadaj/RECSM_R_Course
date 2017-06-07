###############
# Author: Jorge Cimentada & Basilio Moreno
# Time: Wed Jun  7 08:17:50 2017
# Project: RECSM seminar
###############


# Let's recreate some basic descriptive statistics functions.

# First, the mean. Create a function that accepts a vector 'x', sums all the
# elements and divides by the length(). Call it `our_mean`.

our_mean <- function(x) { # answer
  sum(x)/length(x)
}

# Now create the variance function. Do it by steps.
x <- 1:10

# subtract each x element from the mean(x)
# wrap in parenthesis and elevate to the 2nd power
# sum() everything up
# divide by the length(x) - 1

our_var <- function(x) {
  sum((x - mean(x))^2)/(length(x) - 1)
}

# Now create the standard deviation function. Call it our_sd() and simply take the sqrt() of our_var().

our_sd <- function(x) {
  sqrt(our_var(x))
}


# Search for a package and install a function and see what it does
# Write small code with a problem and let them fix it.
# * They should look into the documentation
# * They shouldn't know the functions
# The problem could be that:
# First, they don't know a new function (like for() or sapply())
# Calculating the log() of a character when looping through a number of vectors

sapply(iris, log)