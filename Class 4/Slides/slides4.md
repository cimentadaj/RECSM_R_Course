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
date:  28th of June of 2018
class: section
font-family: 'Helvetica'
width: 1800
height: 900

<div align="center">
<img src="./figures/rlogo.png" width=500 height=450>
</div>

An introduction to functions
========================================================

Functions are R's black box...
Take the function `mean` as example.


```r
mean(iris$Sepal.Length)
```

An introduction to functions
========================================================

In the RECSM seminars you'll be using some advanced R which is why we need to take you to the limit!

* Run one example with the `lm` (Fitting linear models) function and the `mtcars` dataset.

Remember to ask for help if needed `?function`

```r
lm(mpg ~ vs + cyl, data = mtcars)
by(mtcars, mtcars$cyl, summary)
mtcars$mpg_mean <- ifelse(mtcars$mpg >= mean(mtcars$mpg), 1, 0)
```

An introduction to functions
========================================================

I think you're ready for some real R programming...
