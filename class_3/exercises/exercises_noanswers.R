###############
# Author: Jorge Cimentada & Basilio Moreno
# Time: Thu Jun  6 18:59:38 2019
# Project: RECSM seminar
###############


# Let's recreate some basic descriptive statistics functions.

# First, the mean. Create a function that accepts a vector 'x', sums all the
# elements and divides by the length(). Call it `our_mean`.


# Now create the variance function. Do it by steps.
x <- 1:10

# subtract each x element from the mean(x)
# wrap in parenthesis and elevate to the 2nd power
# sum() everything up
# divide by the length(x) - 1


# Now create the standard deviation function. Call it our_sd() and simply take the sqrt() of our_var().



# Last test: understanding what this code is doing.
# Use ?`for` or ?`if` if needed.

for (column in mtcars) {
  
  if (is.numeric(column)) {
    print(mean(column))
  } else {
    message("Not numeric")
  }
  
}

# Turn the above code to work for the 'iris' dataset. 
