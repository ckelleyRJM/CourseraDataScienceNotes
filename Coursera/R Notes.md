## SQL <-> R

### Pulling data from database

* Find the appropriate package via Google
* Tutorial for PostgreSQL: https://code.google.com/archive/p/rpostgresql/
* Strava: https://github.com/fawda123/rStrava

### Looking at the data

General structure of `table`

* R: `str(table)`
* SQL: ??

Get a sample of rows in `table`

* R: `head(table)`
* SQL: `select * from table limit 7`

Count number of rows in `table`

* R: `nrow(table)`
  * Note: `ncol` finds number of columns as well. Idk about a SQL equilvalent.
* SQL: `select count(*) from table`

Count number of flags with orange in them. Dataset ‘flags’ has a column binary ‘orange’.

* R: `sum(flags$orange)`
* SQL: `select count(*) from flags where orange = 1`

Find total number of flags with each color.

* R: 
  * flag_colors <- flags[, 11:17] ## build data.frame with just the color columns from `flags`
  * sapply(flag_colors, sum) ## run sapply() on the segmented data set
* SQL: This is pretty difficult. Have to write subqueries for each column.


partition over / group by in SQL is…. in R

## Downloading data

### CSV file from internet

```
if(!file.exists("./data")){dir.create(".data")} ## Create a directory to store the file if it doesn't exist
fileUrl <- "<set file url between quotes>"
download.file(fileUrl, destfile=".data/<file name>.csv", method="curl")
restData <- read.csv("./data/<file name>.csv")
```

## Transforming data

* Useful libraries: `plyr`, ...

* Subsetting variables
```
restData$nearMe = restData$neighborhood %in% c("Roland Park","Homeland")
table(restData$nearMe)
```

* Creating binary variables
```
restData$zipWrong = ifelse(restData$zipCode < 0, TRUE, FALSE) ## If zipCode is negative, assign TRUE
table(restData$zipWrong, restData$zipCode < 0) ## Return matric showing count of T/F 
```

displays below, b/c there is only 1 zipCode < 0:
```
      FALSE TRUE
FALSE  1326  0
TRUE     0   1
```

## Creating graphics

* For more info about base graphs: http://www.ling.upenn.edu/~joseff/rstudy/week4.html
* Learn about ggplot2 package, which is apparently really important and ubiquitious among R analyses.

## Other

tapply splits a table based on values of a column in that table. For example,

> tapply(flags$population, flags$landmass, summary)

gives summary data about populations among each landmass group. The landmass groups are defined based on the dataset, `flags`.



tapply is, essentially, sapply with a split embedded. For example, these two are the same:
* tapply(mtcars$mpg, mtcars$cyl, mean)
* sapply(split(mtcars$mpg, mtcars$cyl), mean)
