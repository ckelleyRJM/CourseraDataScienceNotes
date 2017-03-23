During this course we'll be using the [swirl](http://swirlstats.com/) ( [Github here](https://github.com/swirldev/swirl_courses)) software package for R in order to illustrate some key concepts. The swirl package turns the R console into an interactive learning environment. Using swirl will also give you the opportunity to be completely immersed in an authentic R programming environment. In this programming assignment, you'll have the opportunity to practice some key concepts from this course.

## 0. Install R

* swirl requires R 3.0.2 or later. If you have an older version of R, please update before going any further. If you're not sure what version of R you have, type R.version.string at the R prompt. You can download the latest version of R from https://www.r-project.org/.
* Optional but highly recommended: Install RStudio. You can download the latest version of RStudio at https://www.rstudio.com/products/rstudio/.

## 1. Install swirl

Since swirl is an R package, you can easily install it by entering a single command from the R console:


```
install.packages("swirl")
```

If you've installed swirl in the past make sure you have version 2.2.21 or later. You can check this with:


```
packageVersion("swirl")
```

## 2. Load swirl

Every time you want to use swirl, you need to first load the package. From the R console:


```
library(swirl)
```

## 3. Install the R Progroamming course

swirl offers a variety of interactive courses, but for our purposes, you want the one called R Programming. Type the following from the R prompt to install this course:


```
install_from_swirl("R Programming")
```

## 4. Start swirl and complete the lessons

Type the following from the R console to start swirl:


```
swirl()
```

Then, follow the menus and select the R Programming course when given the option. For the first part of this course you should complete the following lessons:

1. Basic Building Blocks
2. Workspace and Files
3. Sequences of Numbers
4. Vectors
5. Missing Values
6. Subsetting Vectors
7. Matrices and Data Frames

While swirl is active, use `play()` to pause swirl. `nxt()` will reactivate swirl.

## If you need help...

Visit the [Frequently Asked Questions (FAQ) page](https://github.com/swirldev/swirl/wiki/Coursera-FAQ) to see if you can answer your own question immediately.

Search the Discussion Forums this course.

If you still can't find an answer to your question, then create a new thread under the swirl Programming Assignment sub-forum and provide the following information:

A descriptive title
Any input/output from the console (copy & paste) or a screenshot
The output from sessionInfo()
Good luck and have fun!

For more information on swirl, visit swirlstats.com
