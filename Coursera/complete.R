complete <- function(directory, id = 1:332 ){
     ## this video for help: 
     ## https://www.youtube.com/watch?v=7J2wpxyjfn8
     
     fileList <- list.files(path = directory, pattern = ".csv", full.names = TRUE)
     nobs <- numeric()
     
     for (i in id) {
          data <- read.csv(fileList[i])
          nobs <- c(nobs, sum(complete.cases(data)))
     }
     
     data.frame(id, nobs)
}makeVector <- function(x = numeric()) {
     m <- NULL
     set <- function(y) {
          x <<- y
          m <<- NULL
     }
     get <- function() x
     setmean <- function(mean) m <<- mean
     getmean <- function() m
     list(set = set, get = get,
          setmean = setmean,
          getmean = getmean)
}