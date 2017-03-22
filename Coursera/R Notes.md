Count number of flags with orange in them. Dataset ‘flags’ has a column binary ‘orange’.

* R: sum(flags$orange)
* SQL: select count(*) from flags where orange = 1

Find total number of flags with each color.

* R: 
** flag_colors <- flags[, 11:17] ## build data.frame with just the color columns from `flags`
** sapply(flag_colors, sum) ## run sapply() on the segmented data set
* SQL: This is pretty difficult. Have to write subqueries for each column.



partition over / group by in SQL is…. in R


tapply splits a table based on values of a column in that table. For example,

> tapply(flags$population, flags$landmass, summary)

gives summary data about populations among each landmass group. The landmass groups are defined based on the dataset, `flags`.



tapply is, essentially, sapply with a split embedded. For example, these two are the same:
* tapply(mtcars$mpg, mtcars$cyl, mean)
* sapply(split(mtcars$mpg, mtcars$cyl), mean)
