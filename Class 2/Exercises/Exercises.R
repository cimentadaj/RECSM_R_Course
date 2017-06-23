###############
# Author: Jorge Cimentada & Basilio Moreno
# Time: Fri Jun  2 07:50:13 2017
# Project: RECSM Second Exercises
###############

# Create a vector of length 1000 from random numbers from 200:5000, call it income.
# Hint: use the ?sample function.
income <- sample(200:5000, 1000) # answer

# Create a new vector (using seq()) that runs from 1000 to 1 (not from 1 to 1000).
# Call it index.
index <- seq(1000, 1) # answer

# Finally, use the rep() function to repeat the vector c("male", "female")
# 500 times. Call it gender.
gender <- rep(c("male", "female"), 500) # answer

# Let's begin the subsetting!

# Can you subset all incomes which are below the mean(income)?
income[income < mean(income)] # answer

# Give me the incomes of only males. Save as income_male.
income_male <- income[gender == "male"] # answer

# What's the average male income? Hint: ?mean
mean(income_male) # answer

# Repeat the above for women and calculate the average income. Which one is higher?
income_female <- income[gender == "female"] # answer
mean(income_female) # answer

# We could put these three variables into a matrix but that wouldn't make a lot of sense!
# Why?
Because they have different classes and would be coerced into one single class. # answer

# Using the data.frame() function, combine the three variables into a data frame
# in this order: index, income and gender. Call the data frame our_df.
our_df <- data.frame(index, income, gender) # answer

# Use the head() function to take a look at your data.
head(our_df) # answer

# Can you subset the first 15 rows from our_df?
our_df[1:15, ] # answer

# Repeat the previous only for the income and gender columns
our_df[1:15, c("income", "gender")] # answer
our_df[1:15, 2:3] # answer

# Using the $, subset the variable income and calculate the mean() of income.
mean(our_df$income)

# Last exercise. Give me the rows where index is below 500 and the gender
# variable is equal to female. Hint: logical statement & logical statement.
our_df[our_df$index < 500 & our_df$gender == "female", ] # answer
