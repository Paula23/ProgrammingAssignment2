## Compute the inverse of a Matrix n x n

## Recibe matriz

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


## Compute Inverse



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
  ## Return a matrix that is the inverse of 'x'
}

m=matrix(c(1,2,12,13,5,8,6,10,26), nrow = 3, ncol = 3)
x=makematriz(m)
t=cachesolve(x)