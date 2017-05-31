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
 [1]  9  3  5  7  6  4  8  2  1 10
```

We have 10 random numbers.

Their positions are:


```
 1  2  3  4  5  6  7  8  9 10 
 9  3  5  7  6  4  8  2  1 10 
```

