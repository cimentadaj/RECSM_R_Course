###############
# Author: Jorge Cimentada & Basilio Moreno
# Time: Wed Jun  21 18:47:50 2017
# Project: RECSM seminar
###############

# This code is an example from the previous year RECSM summer school.
# The aim is to put what you just learnt into practive in an environment similar to the one
# you will find from tomorrow on.

#Where are we?
getwd()

#How to change the current folder (a.k.a. working directory)?
setwd("GitHub/RECSM_R_Course/Class 4/Exercises/")

#What is available here?
list.files()

# list objects in the R environment
# (same as viewing the "Workspace" pane in RStudio)
ls()
rm(list = ls()) # remove everything from the environment

#Working with the general R environment
install.packages("foreign") 

#Then we have to activate the package by calling it using the library function.
#Note that quotes are not needed here, and that this function takes arguments of lenght one!

library(c("foreign", "lubridate"))


## ----linear_regression_minimal, child='linear_regression_minimal.Rnw', eval=TRUE----

## ------------------------------------------------------------------------
I <- 100
d <- data.frame(i=1:I)
d$X <- rnorm(I, mean=4, sd=4)
d$alpha <- 2; d$beta <- 3; sigma <- 5
d$y <- d$alpha + d$beta * d$X + rnorm(I, mean=0, sd=sigma)

## ------------------------------------------------------------------------
head(d)

## ------------------------------------------------------------------------
y <- d$y
nI <- length(y)
x <- d$X

D <- list(y=y, x=x, nI=nI)


# ==============================
# Introduction to basic R syntax
# ==============================

1 + 3			# evaluation

a <- 3			# assignment (to object a)
a				# evaluation

a<-3				# spacing does not matter
a    <-    3		# spacing does not matter

sqrt(a)			# use the square root function
b <- sqrt(a)		# use function and assign result to object b

b

x				# evaluate something that is not there

a == b			# is a equal to b?         
a != b			# is a not equal to b?

# What is the value of False and True ?
(a != b)+1
(a != b)
+(a != b) # the sum operator associated with True allows additivity



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

# Creating vectors using the "concatenate" operator
a <- c(1,3,5)		# create a vector by combining values
a
a[2]		# select the second element

b <- c("one","three","five")	# also works with strings
b
b[2] 		# select the second element

a <- c(a,a)	# can apply recursively
a
a <- c(a,b)	# mixing types---what happens?
a			# all converted to the same type

# Sequences and replication
a <- seq(from=1,to=5,by=1)	# a sequence from 1 to 5
b <- 1:5					# a shortcut!

rep(1,times=5)		# a lot of ones
rep(1:5,times=2)	# repeat sequence 1 to 5, twice
rep(1:5,each=2)	# same as above, but element-wise
rep(1:5,times=5:1)	# can vary the count of each element

# Any, all, and which (with vectors)
a <- 1:5		# create a vector (sequence from 1 to 5)
a>2			# some TRUE, some FALSE
any(a>2)		# are any elements TRUE?
all(a>2)		# are all elements TRUE?
which(a>2)	# which indices are TRUE?

# What about asking how long the vector is?
length(a)

# ---------------------------
# From vectors to matrices...
# ---------------------------

# create a matrix the "formal" way...
a <- matrix(data=1:25, nrow=5, ncol=5)
a
a[1,2]		# select an element (specifying two dimensions)
a[1,]		# just the first row
a[,2]		# just the second column
a[2:3,3:5]	# select submatrices
a[-1,]		# nice trick: negative numbers omit cells!
a[-2,-2]		# get rid of row two and column two

# another way to create matrices (bind together column-wise)
b <- cbind(1:5,1:5)
b

# can perform with rows, too (bind together row-wise)
d <- rbind(1:5,1:5)
d
cbind(b,d)	# no go: must have compatible dimensions!
dim(b)		# what were those dimensions, anyway?
dim(d)
nrow(b)		# how many rows in b?
ncol(b)		# how many columns in b?
cbind(b,b)	# combining two matrices, column-wise

t(b)				# can transpose b
cbind(t(b),d)		# now it works
rbind(t(b),d)		# now it works

# -----------------------
# Element-wise operations
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

a %*% t(b)	# matrix multiplication

# Logical operators (generally) work like
# arithmetic ones:
a > 0	# each value greater than zero?
a == b	# corresponding values equivalent?
a != b	# corresponding values not equivalent?

# -----------
# Data frames
# -----------

# Build a data frame from scratch, containing
# three columns of data
d <- data.frame(income=1:5,sane=c(T,T,T,T,F),id=LETTERS[1:5])
d

class(d)
d[1,2]	# acts a lot like a matrix!
d[,1]*5
d[-1,]
d$sane	# can use dollar sign notation to extract columns
d$sane[3]<-FALSE	# making changes
d
d[2,3]	# shows factors for string values

# If you want to do without factors
d <- data.frame(income=1:5,sane=c(T,T,T,T,F),name=LETTERS[1:5],stringsAsFactors=FALSE)

d[2,3]

d <- as.data.frame(cbind(1:5,2:6))	# can create from matrices
d
is.data.frame(d)	# how can we tell it's not a matrix?
is.matrix(d)		# the truth comes out

# --------------------------
# Finding built-in data sets
# --------------------------

# Many packages have built-in data for testing
# and educational purposes:
data()		# lists them all
?USArrests		# get help on a data set
data(USArrests)	# load the data set
USArrests			# view the object

# ------------------------
# Elementary visualization
# ------------------------

# R's graphics workhorse is the "plot" command:
plot(x=USArrests$Murder,y=USArrests$UrbanPop)

# Same as above, but now on log-log scale
plot(x=USArrests$Murder,y=USArrests$UrbanPop,log="xy")

# Adding plot title and clean up axis labels
plot(x=USArrests$Murder,y=USArrests$Assault,xlab="Murder",ylab="Assault",main="USArrests")

# Can also add text to a plot:

# Step 1: set up a "blank" plot window
plot(x=USArrests$Murder,y=USArrests$Assault,xlab="Murder",ylab="Assault", main="USArrests",type="n")
# Step 2: add in text
text(x=USArrests$Murder,y=USArrests$Assault,labels=rownames(USArrests))


# Histograms and boxplots are often helpful
hist(USArrests$Murder)
plot(density(USArrests$Murder), col="dark red")
boxplot(USArrests)