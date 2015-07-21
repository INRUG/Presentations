<!-- https://github.com/ajlyons/rpres_css -->

<style>

.reveal h1, .reveal h2, .reveal h3 {
  word-wrap: normal;
  -moz-hyphens: none;
}

.footer {
    color: black; background: #E8E8E8;
    position: fixed; top: 90%;
    text-align:center; width:100%;
}

.small-code pre code {
  font-size: 1em;
}


</style>


Creating R Packages
===============
author: Rollie Parrish
date: July 10, 2015


Overview
===============
- Motivation
- First steps
- Documentation
- Examples
  - Functions
  - Datasets
  - RMarkdown templates



Motivation
===============

- Sharing R code with others (obvious)

- Personal functions
- Dataset documentation
- RMarkdown templates


What is included?
===============

### Bare Minimum
- `/R` folder for package functions
- `/data` folder for datasets
- `/man` folder for documentation files
- NAMESPACE file
- DESCRIPTION file with at least:

```
Package: MyPackage
Version: 0.1
```

Much easier with `devtools` package and RStudio




First Steps (RStudio)
===============

1. System requirements
    - Rtool if using Windows
    - LaTeX for generating .pdf documentation
2. Create new project
3. Write functions
4. Add documentation
5. Build & reload
6. Check
7. Sharing Package? (source files vs binary files vs Github)





Documentation
===============
- Roxygen: a markup language to generate documentation from embedded comments
- Roxygen must be configured in RStudio

    Tools --> Project Options --> Build Tools -->
    select "Generate Documentation with Roxygen"

    configure: check all the boxes


- This will generate .Rd documentation files, NAMESPACE file
- RStudio can generate a Roxygen skeleton from a function



Demo - Function
===============

Saved in `/R` folder

```
mult <- function(x,y) {
    x * y
}
```

Demo - Function Documentation
===============

- with cursor inside function
-  Code --> Insert Roxygen Skeleton

Produces this above the function, which can then be modified

```
#' Title
#'
#' @param x
#' @param y
#'
#' @return
#' @export
#'
#' @examples
```






Demo - Dataset
===============

Dataset saved as seperate .rda file in  `/data` folder

```
# source: data.seattle.gov
sea_911 <- read.csv(file="Seattle_911.csv")
save(sea_911, file='data/mydata.rda')

```

Demo - Dataset Documentation
=============================

1. Create an .R file in the /R folder
2. Contains Roxygen comments and the name of the dataset

```
#' sea_911 short description.
#'
#' This is a longer description.
#' Can be multiple lines if necessary.
#'
#' @format A data frame with...:
#' \describe{
#'   \item{first_variable}{some details}
#'   \item{second_variable}{more details}
#'   ...
#' }
#' @source \url{http://wherediditcomefrom.org}
"sea_911"


```

Usage
==================

- assuming no errors with Build & Reload
- `library(MyPackage)`


```
> example("mult", "MyPackage")

mult> mult(2,4)
[1] 8

mult> mult(c(1,3), c(2,4))
[1]  2 12
```



Sharing
====================

- optional
- source files (requires RTools to compile)
- binary files (may need Windows & Mac)
- git repository (GitHub, Bitbucket, etc.)
- CRAN (!)



Resources
===============

- Hillary Parker [Writing an R package from scratch](http://hilaryparker.com/2014/04/29/writing-an-r-package-from-scratch/)
- Karl Broman [R package primer - a tutorial](http://kbroman.org/pkg_primer/)
- Hadley Wickham [R packages online book](http://r-pkgs.had.co.nz/)

