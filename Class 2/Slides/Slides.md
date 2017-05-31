<style>
bold {font-weight: bold; }

.section .reveal .state-background {
    background: white;
}

.section .reveal p {
   color: black;
   text-align:center;
   font-size: 1.8em;
}

.section .reveal h1,
.section .reveal h2 {
    color: black;
    text-align:center;
    width:100%;
}


</style>

An introduction to R
========================================================
author: Jorge Cimentada and Basilio Moreno
date:  23rd of June of 2017
class: section
font-family: 'Helvetica'
width: 1800
height: 900

<!-- Arreglar que las imagenes que se vean -->
<div align="left">
<img src="./figures/rlogo.png" width=500 height=350>
</div>

<div align="right">
<img src="./figures/rstudiologo.png" width=500 height=350>
</div>

Subsetting in R
========================================================

Alright, we know what are vectors, matrices and data frames.

- What is subsetting?
- Is it the same for all objects?


```r
x <- sample(1:10)
x
```

```
 [1]  6  2  4  5  9  3 10  1  8  7
```

We have 10 random numbers.

Their positions are:


```
 1  2  3  4  5  6  7  8  9 10 
 6  2  4  5  9  3 10  1  8  7 
```

Subsetting in R
========================================================

If `x` is:

```
 [1]  6  2  4  5  9  3 10  1  8  7
```

what is the result of:

```r
x[c(1, 3, 8)]

x[c(-1, -5)]

x[seq(1, 8, 2)]

x[NA]

x[]
```

Write it down without running it!

Subsetting in R
========================================================

Do these subsetting rules apply the same for all types of vectors?

```r
char <- letters[1:10]
lgl <- c(TRUE, FALSE, TRUE, TRUE, TRUE, FALSE, FALSE)
gender <- factor(sample(c("female", "male"), 10, replace = T))
```

What about these ones?


```r
char[c(1, 1, 1)]
lgl[c(TRUE, 5, 1)]
gender[c(1:3, TRUE)]
```

Super test:

```r
super_vector <- c(char, gender, lgl)
super_vector[c(1, 11, 27)]
```

Subsetting in R
========================================================

Subsetting rules are the same for all types of vectors.

Exceptions are:

* matrices
* data fraes
* lists

Let's go through each one...

Subsetting in R
========================================================

If you remember correctly, matrices is a a vector with rows rows and columns.


```r
x_matrix <- matrix(1:10, 5, 2) # 5 rows and 2 columns
x_matrix
```

```
     [,1] [,2]
[1,]    1    6
[2,]    2    7
[3,]    3    8
[4,]    4    9
[5,]    5   10
```

Building on the previous examples, what is the result of:

```r
x_matrix[c(1, 4, 6)]
```

To confuse you even more, what's the result of:

```r
x_matrix[2:3, ]
```
