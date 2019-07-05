###############
# Author: Jorge Cimentada & Basilio Moreno
# Time: Thu Jun 06 18:29:05 2019
# Project: Exercises Class_1
###############


# Create a numeric vector from 1 to 10 and call it first_ten
first_ten <- 1:10 # answer

# Create a numeric vector from 1 to 100 and call it first_hundred. Hint: Type ?`:`
first_hundred <- 1:100 # answer

# seq() function is the same as the semi colon (:).
# For example: 
seq(1, 10)
1:10

# Read ?seq and create is a sequence from 1 to 100 every 2 numbers: 1, 3, 5, etc..
seq(1, 100, 2) # answer

# Create another sequence from 5 to -5, in jumps of 2. Hint: something with negative
seq(5, -5, -2) # answer

# Don't run this yet. Predict what is the class of this vector?
vec <- "1":"100"
class(vec) # answer
numeric # answer

# Why?
#Because the : operator coerces to numerics # Answer
#Type ?`:` and read Value # Answer

# What is the class of this vector?
x <- c(seq(1, 100, by = 2), "100")
numeric # answer

# How can we coerce it to the class we want (numeric)?
as.numeric(x) # Answear

# Print the character vector letters-it is available in R by default so you do not need to create it.
letters # Answer

# Turn the letters to an ordered factor and call it: ordered_letters
ordered_letters <- factor(letters, ordered = T) # Answer

# Can you write a logical statement evaluating when x is above or equal to 70?
# Do the necessary transformations.

as.numeric(x) >= 70 # Answer

# What is the result of this?
# Write it down, don't run
c(T, T) + c(5, 10) + c(0, 0)
#Additions are operated across matrices # Answer
1:3 + seq(10, 16, 2) # why is the last reult not 16?
1:100 + 1

# Create a vector with 10 random letters and call it rand_letters
rand_letters <- c("a", "b", "c", "d", "e", "f", "g", "h", "p", "p") # answer

# Create a matrix of dimension 10 (rows) x 1 (column) with the vector first_ten
# assign name matrix_letters
matrix_letters <- matrix(rand_letters, 10, 1) # answer

# Repeat the previous task for the first_ten vector and call it matrix_numbers
matrix_numbers <- matrix(first_ten, 10, 1)

# When we use Excel or Stata we use rectangular datasets, that have rows and columns.
# I know you don't know the cbind() function but it stands for column bind. Use it
# and inside include matrix_letters and then matrix_numbers separated by a comma.
cbind(matrix_letters, matrix_numbers) # answer

# What is the problem with this data set?

# That's why we use data frames!
# Copy the code from above and replace cbind() by data.frame()
data.frame(matrix_letters, matrix_numbers) # answer
