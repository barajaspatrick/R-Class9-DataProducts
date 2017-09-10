DDPCourseProjectPresentation
========================================================
author: Patrick Barajas
date: 3/26/17
autosize: true

Introduction
========================================================
This Presentation is for the final project in the Developing Data Proucts
Coursera course Project.

The R Code for the Shiny Application can be found at: 
<https://github.com/barajaspatrick/DDPCourseProject2>

The Shiny Application can be found in at:
<https://barajaspatrick.shinyapps.io/DDPCourseProject2/>

Purpose of the Shiny application
========================================================

The DDPCourserProject2 Shiny Application generates random numbers and creats a histogram out of them. The goal is to give the user an idea on how sample size affects the sample mean.

Server Side
========================================================
On the server side the number of obersvations input is used to generate a histogram with a mean of 0. The user has the option to choose the number of observations 'n', and the standard deviation 'sd'.

```r
        set.seed(123)
        x <- rnorm(n = 100, mean = 0, sd = 1)
        hist(x, col = 'darkgray', border = 'white')
```
Thank You!
========================================================
