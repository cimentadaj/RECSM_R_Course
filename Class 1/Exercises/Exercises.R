###############
# Author: Jorge Cimentada & Basilio Moreno
# Time: Sat May 27 12:15:42 2017
# Project: Exercises Class_1
###############


# Create a numeric vector from 1 to 10 and call it first_ten

# Create a numeric vector from 1 to 100 and cal it first_hundred. Hint: ?`:`

# seq() function is the same as the semi colon (:).
# For example: 
seq(1, 10)
1:10

# Read ?seq and create is a sequence from 1 to 100 every 2 numbers: 1, 3, 5, etc..

# Create another sequence from 5 to -5, in jumps of 2.

# Don't run this yet. Predict what is the class of this vector?
vec <- "1":"100"

# Why?

# What is the class of this vector?
x <- c(seq(1, 100, by = 2), "100")

# How can we coerce it to the class we want?
