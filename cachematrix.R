## This function gives the inverse of a given matrix,

#########################################################################################
#########################################################################################
## First function returns a list with 4 functions:
## 'setmatrix' sets the value of the matrix;
## 'getmatrix' gets the value of the matrix;
## 'setsolve' sets the value of the inverse matrix;
## 'getsolve' gets the value of the inverse matrix.

makematriz <- function(m) {
  s <- NULL
  setmatrix <- function(y) {
    m <<- y
    s <<- NULL
  }
  getmatrix <- function() m
  setsolve <- function(solve) s <<- solve
  getsolve <- function() s
  list(setmatrix = setmatrix, getmatrix = getmatrix,
       setsolve = setsolve,
       getsolve = getsolve)
}

##############################################################################################
##############################################################################################

## returned the first function to calculate Inverse



cachesolve <- function(x){
  s<- x$getsolve()
  if(!is.null(s)) {
    message("getting cached data")
    return(s)
  }
  data <- x$getmatrix() 
  s <- solve(data)
  x$setsolve(s)
  s
  ## Return a matrix that is the inverse of 'm'
}

#  Example
m=matrix(c(1,2,12,13,5,8,6,10,26), nrow = 3, ncol = 3)
x=makematriz(m)
t=cachesolve(x)