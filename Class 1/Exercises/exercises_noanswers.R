###############
# Author: Jorge Cimentada & Basilio Moreno
# Time: Sat May 27 12:15:42 2017
# Project: Exercises Class_1
###############
# Create a numeric vector from 1 to 10 and call it first_ten

# Create a numeric vector from 1 to 100 and call it first_hundred. Hint: Type ?`:`

# seq() function is the same as the semi colon (:).
# For example: seq(1, 10)1:10

# Read ?seq and create a sequence from 1 to 100 every 2 numbers: 1, 3, 5, etc..

# Print the character vector letters.
# It is available in R by default so you do not need to create it.

# Create another sequence from 5 to -5, in jumps of 2. Hint: something with negative

# Don't run this yet. Predict what is the class of this vector?
vec <- "1":"100"
# Why?

# What is the class of this vector?x <- c(seq(1, 100, by = 2), "100")

# How can we coerce it to the class we want (numeric)?

# Print the character vector letters

# Turn the letters to an ordered factor and call it: ordered_letters

# Can you write a logical statement for when x is above or equal to 70?
# Do the necessary transformations.

# What is the result of this?
# Don't run
c(T, T) + c(5, 10) + c(0, 0)
1:3 + seq(10, 16, 2) # why is the last result not 16?
1:100 + 1

# Create a vector with 10 random letters and call it rand_letters

# Create a matrix of dimension 10 (rows) x 1 (column) with the vector rand_letters
# Assign name matrix_letters

# Repeat the previous for first_ten vector and call it matrix_numbers

# When we use Excel or Stata we use rectangular datasets, that have rows and columns.
# I know you don't know the cbind() function but it stands for column bind. Use it
# and inside include matrix_letters and then matrix_numbers separated by a comma.

# What is the problem with this data set?
# That's why we use data frames!# Copy the code from above and replace cbind() by data.frame()
