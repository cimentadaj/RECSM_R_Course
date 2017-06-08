###############
# Author: Jorge Cimentada & Basilio Moreno
# Time: Fri Jun  2 07:50:13 2017
# Project: RECSM Second Exercises
###############  

income <- sample(200:5000, 1000)

# Create a new vector (using seq()) that runs from 1000 to 1 (not from 1 to 1000).
# call it index

# Finally, use the rep() function to repeat the vector c("male", "female")
# 500 times. Call it gender



# Let's begin the subsetting!



# Can you subset all incomes which are below the mean(income)?

# Give me the incomes of only males. Save as income_male.

# What's the average male income? Hint: ?mean

# Repeat the above for women and calculate the average income. Which one is higher?

# We could put these three variables into a matrix but that wouldn't make a lot of sense!
# Why?

# Using the data.frame() function, combine the three variables into a data frame
# in this order: index, income and gender. Call the data frame our_df.

# Use the head() function to take a look at your data.

# Can you subset the first 15 rows from our_df?

# Repeat the previous only for the income and gender columns

# Using the $, subset the variable income and calculate the mean() of income.

# Last exercise. Give me the rows where index is below 500 and the gender
# variable is equal to female. Hint: logical statement & logical statement
