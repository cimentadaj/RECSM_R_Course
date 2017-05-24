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

How to install R?
========================================================

Luckily, you guys have R and Rstudio installed, so you don't have to worry about this!

But if you want to install it at home, please follow [this guide](https://github.com/cimentadaj/Rseminars/blob/master/RonR_Second_Seminar/README.md)

That guide can help you install

* R
* Rstudio
* And `swirl`, a package in which you will do a bunch of exercises as homework!

What is R?
========================================================

R is a programming language designed to do data analysis, usually interactive.

R is helpful for..

* Getting that darn excel/stata file into R (importing)
* Turning that very ugly dataset into something to work with (data cleaning)
* Automating your weekly reports (automating tasks)
* Analyzing data (modeling)
* Creating nicely formatted documents (communicating results)
* Building your own commands to do specific things (functions)
* Building very creative graphics

* Among many things...

And so.. what is Rstudio?
========================================================

Rstudio is just a nice software to run R!
 
<!-- Arreglar las imagenes -->

<div align="center">
<img src="./figures/rstudio_presentation.png" width=500 height=350>
</div>

***

<div align="center">
<img src="./figures/r_presentation.png" width=500 height=350>
</div>

And so.. what is Rstudio?
========================================================

<div align="center">
<img src="./figures/rstudio_workflow.png" width=500 height=350>
</div>

Let's get to it then!
========================================================

R is an interactive language. That means that if you type a number, you will get a number.


```r
10
```

```
[1] 10
```


```r
5
```

```
[1] 5
```

Introduction to R objects
========================================================

R is also a calculator!

Try typing these operations in R:

* `5 + 5`
* `10 - 5`
* `10 * 5`
* `20 / 10`
* `(10 * 20) - 5 / 2 + 2`

Before we continue, what type of operations are these?

Answers in next slide!

Introduction to R objects
========================================================

* Addition
* Subtraction
* Multiplication
* Division
* A combination of all

Numbers in R are called `numerics`.

For example:

```r
is.numeric(10)
```

```
[1] TRUE
```

```r
is.numeric(10 + 20)
```

```
[1] TRUE
```

```r
is.numeric(10 / 2)
```

```
[1] TRUE
```

Introduction to R objects
========================================================

Having single numbers, like 10, is not very useful.

We want something similar to a column of a dataset, like age or income.

We can do that with `c()`, which stands for `cocatenate`.


```r
c(32, 34, 18, 22, 65)
```

```
[1] 32 34 18 22 65
```

Read this expression as: concatenate these numbers into a single object.
