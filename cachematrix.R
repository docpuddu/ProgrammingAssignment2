## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  
}

## Return a matrix that is the inverse of 'x'
cacheSolve <- function(x, ...) {
  
  ## get the stored one, if it is not null return it
  i <- x$getinverse()
  if(!is.null(i)) {
    message("getting cached data")
    return(i)
  }
  
  ##otherwise perform inversion and return the result
  data <- x$get()
  i <- solve(data, ...)
  x$setinverse(i)
  i  
  ####
  
}

