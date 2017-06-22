###############
# Author: Jorge Cimentada & Basilio Moreno
# Time: Wed Jun  22 22:07:50 2017
# Project: Exercises Class_4
###############

#########################################################################################
### INTRO TO R EXERCISES

# Evaluation: Add 4 to 5
4 + 5 #answer

# Assignment: Create an object `a` with value 3. 
# Hint: spacing does not matter.
a <- 3 #answer

# Print it to check the value of `a`!
# Hint: Capitalisation DOES matter.
a #answer

# Use the square root function (sqrt())  over a
sqrt(a) #answer
# Use the function again and assign the result to object b
b <- sqrt(a)	#answer

# Try to evaluate an object that does not exist in your environment and see what happens.
j #answer

# Make a logical test asking wheter a is equal to b.
a == b #answer

# What would you have to do to test the opposite? Is a different than b?
a != b #answer

# What is the value of False and True ?
# Create a mathematical operation that equals 2 using logical statements.
(a != b) + 1 #answer  (a != b) + (a != b) #alternative answer

##################################
# Getting help in R

# get help with R generally
# (same as viewing the "Help" pane in RStudio)
help.start()

# More targeted help
?sqrt			# get specific help for a function
??sqrt			# looking for help pertaining to sqrt

apropos("sq")		# it's on the tip of my tongue...

rm(a)			# remove a single object
rm(list=ls())		# remove ... remember?

# -------------------------
# Vectors and matrices in R
# -------------------------

# Create a vector using the `concatenate` operator.
a <- c(1,3,5)		#answer

# Select the second element
a[2] #answer

# What about asking how long the vector is? Use the function length()


# Any, all, and which (with vectors)
# See how these functions allow us to create logical tests from vectors.
# Create a vector (sequence from 1 to 5)
a <- 1:5		#answer

#Then, run the following code and try to understand each function at place.
a>2			# some TRUE, some FALSE
any(a>2)		# are any elements TRUE?
all(a>2)		# are all elements TRUE?
which(a>2)	# which indices are TRUE?

# From what you saw, what do you think would be the result of `any(a>5)`?
FALSE #answer

# Create a matrix the "formal" way... With the `matrix()` function.
# Hint: In RStudio, use tab within the brackets of a function to see 
# which arguments it is waiting for.
m <- matrix()

# Select an element (specifying two dimensions)
m[1,2] #answer

# just the first row
m[1,] #answer

# just the second column
m[,2] #answer

# Select a submatrix (a matrix within the values of a)
m[2:3,3:5] #answer

m[-2,]		# nice trick: negative numbers omit cells!

# Get rid of row four and column two
m[-4,-2] #answer

# What are the dimensions of that martix?
dim(m)
nrow(m)		# how many rows in b?
ncol(m)		# how many columns in b?

#Here we have a new with 5 numeric elements
l <- (1:5)

# Since its length equals that of the two dimensions of the matrix m, we can
# add them together! It is possible to add columns and rows to an existing matrix.
# Run and check output of the code below:
cbind(m,l)
rbind(m,l)

# Can you add a vector of even numbers as a new column to the matrix `m`?
even <- (c(2, 4, 6, 8, 10)) ; cbind(m,even) #answer

# -----------------------
# Element-wise operations (Some new information)
# -----------------------

# Most arithmetic operators are applied element-wise:
a <- 1:5		# create a vector
a + 1		# addition
a * 2		# multiplication
a / 3		# division
a - 4		# subtraction
a ^ 5		# you get the idea...
a + a		# also works on pairs of vectors
a * a
a + 1:6		# problem: need same length

# Same for many other basic transformations
log(a)				# log function
exp(b)				# exponential function
sqrt(a+b)				# note that we can nest statements!
log((sqrt(a+b)+a)*b)	# more nesting

a <- rbind(1:5,2:6)		# same principles apply to matrices
b <- rbind(3:7,4:8)
a + b
a / b

# Logical operators (generally) work like arithmetic ones:
a > 0	# each value greater than zero?
a == b	# corresponding values equivalent?
a != b	# corresponding values not equivalent?

# -----------
# Data frames (back to practice!)
# -----------

# Build a data frame from scratch, containing three columns of data
# named "Income" (numeric), foreign (logical) and name (character).
# The data frame must have dimensions 5, 3.
# (Hint:don't forget the colon operator and concatenate.)
d <- data.frame(income=1:5,foreign=c(T,T,T,T,F),name=LETTERS[1:5]) #answer

#Check that your new object is indeed a data.frame
class(d) #answer

# Print now the vector corresponding to the `foreign` variable
d$name #answer

# As you can see, this vector contains a factor variable.
# If you want to do without factors, use this option:
d <- data.frame(income=1:5,foreign=c(T,T,T,T,F),name=LETTERS[1:5],stringsAsFactors=FALSE)

#Print the `name` vector once again and see the difference.
d$name #answer

# -----------
# Functions
# -----------

# Let's build a function called pctg (percentage) that takes one argument as input, 
# divides it by the total value of the vector, and then multiplies the result by 100.

pctg <- function(x) { #answer
  (x)/sum(x) * 100 
}

# Apply the new `pctg` function over our vector a.
pctg(a) #answer

# We can use functions within  functions too! 
# It is a pretty common practice when coding in R.
# Try to print the sum of all the percentage values of a —they should
# add to 100 if everything worked so far!
sum(pctg(a)) #answer


##########################################################################################
### SECOND EXERCISE
#########################################################################################

##################################
# First some useful working tools.

# Where are we? The following function prints the current working directory,
# i. e., where R is set to work within our computer.
getwd()

#How to change the current folder (a.k.a. working directory)?
setwd("my_computer/example/example_path_file")

# Set the working directory to one level higher in your system.
# To get the file path, you can get the current working directory as we just learnt to do and
# then remove the last indicatio (after the last /)


#What is available here?
list.files()

# List objects in the R environment
# (same as viewing the "Workspace" panel in RStudio)
ls()
rm(list = ls()) # remove everything from the environment

##################################
# Packages

# Most of the time we use functions not included in base R for further developing our work.
# Other users bundle those functions into packages that we can download and use.

# The way to download packages is by using the following function:
install.packages("foreign") 

#Now, try you to install the package called "lubridate"
install.packages("swirl") 

# Then we have to activate the package by calling it using the library function.
# Note that quotes are not needed here, and that this function takes arguments of lenght one!
# Can you make this code work so we hace the two packages up and running?
library(c("foreign", "datasets"))
library("foreign") ; library("datasets") #answer

# --------------------------
# Finding built-in data sets

# Many packages have built-in data for testing and educational purposes:
data()		# lists them all
?USArrests		# get help on a data set
data(USArrests)	# load the data set
USArrests			# view the object

# What class of data object is USArrests?
class(USArrests) #answer

#In order to save time typing, can you rename the object USArrests and call it USA?
USA <- USArrests #answer

# How many dimensions does it have?
dim(USA)

# Could you show only the data referred to states with a Urban Population higher than 80(%)?
USA[USA$UrbanPop > 80, ] #answer

# Now, try to show only the data referred to states with a Urban Population higher than the average?
USA[USA$UrbanPop > mean(USA$UrbanPop), ] #answer

# ------------------------
# Elementary visualization

# R's graphics workhorse is the "plot" command, with two arguments:
plot(x=USA$Murder,y=USA$UrbanPop)

# Adding plot title and clean up axis labels
# Search for the two dimensions of the plot and name each axis accordingly.
plot(x=USA$Murder,y=USA$Assault,xlab="Axis name",ylab="Axis name",main="USArrests")

# You can also add text to a plot:
# Step 1: set up a "blank" plot window
plot(x=USA$Murder,y=USA$Assault,xlab="Murder",ylab="Assault", main="USArrests",type="n")
# Step 2: add in text
text(x=USA$Murder,y=USA$Assault,labels=rownames(USA))

# Try to do the same using the Urban population values of each state.
# This will allow us to compare 3 dimensions at the same time in a rudimentary way.
#Step 1
plot(x=USA$Murder,y=USA$Assault,xlab="Murder",ylab="Assault", main="USArrests",type="n") #answer
#Step 2
text(x=USA$Murder,y=USA$Assault,labels=USA$UrbanPop) #answer

# Histograms are helpful to see the distribution and range of a single variable.
hist(USA$Murder)

# What would be the distribution of the variable UrbanPop?
# Remember that you can check and learn more about any functiona asking for `help()`.
hist(USA$UrbanPop) #answer

#########################################################################################
# --- This is a chunk of code from a RECSM course ----
# Its function is building a random dataset for illustrating an example.
# Do not hesitate to use `?` or `help()` whenever you see something new.
## ------------------------------------------------------------------------
I <- 100

d <- data.frame(i=1:I)

d$X <- rnorm(n = I, mean = 4, sd = 4)

d$alpha <- 2; d$beta <- 3; sigma <- 5

d$y <- d$alpha + d$beta * d$X + rnorm(I, mean=0, sd=sigma)

head(d, n=12)

# What kind of objects are I and d, just created?
class(I) ; class(d) #answer

# How many dimensions do they have?
dim(I) ; dim(d) #answer

# Can you add a new variable to d called "string" which records the position of the observation
# (i) as character data? (Hint: check the variable `as.character()`)
d$string <- as.character(d$i) #answer


plot(d$X, d$y)

# Extra ball: the way to fit a liner model in R is the following:
lm(d$X ~ d$y)

# Can you assign that to an object called my_lm?
my_lm <- lm(d$X ~ d$y)

#Automatic way of generating plots for a linear model and its fit.
plot(my_lm)

#Plotting the two variables involved and the expected values.
plot(d$X, d$y)
abline(my_lm)

# Great! You have completed this introduction course to R!
# There are a lot of resources available to learn more about R.
# If you have time now, why don't you try to load the package `swirl`
# that you installed before?
