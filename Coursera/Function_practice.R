add2 <- function(x, y){
        x + y
}

above10 <- function(x){
          use <- x >10
          x[use]
}

above <- function(x,n=10){
         use <-  x > n
         x[use]
}

columnmean <- function(y,removeNA = TRUE){
         nc <- ncol(y)
         means <- numeric(nc)
         for(i in 1:nc) {
                  means[i] <- mean(y[,i], na.rm = removeNA)
         }
         means
}
pollutantmean <- function(directory = setwd("/Users/craigkelley/Desktop/Stuff/Coursera/specdata"), pollutant, id = 1:332){
     # 'directory' is a character vector of length 1 indicating
     # the location of the CSV files
    
     # 'pollutant' is a character vector of length 1 indicating
     # the name of the pollutant for which we will calculate the
     # mean; either "sulfate" or "nitrate".
    
     # 'id' is an integer vector indicating the monitor ID numbers
     # to be used
    
     # Return the mean of the pollutant across all monitors list
     # in the 'id' vector (ignoring NA values)    
     
     fileList <- list.files(path = directory, pattern = ".csv", full.names = TRUE)
     values <- numeric()
     
     for (i in id){
          data <- read.csv(fileList[i])
          values <- c(values, data[[pollutant]])
     }
     mean(values, na.rm = TRUE)
}
