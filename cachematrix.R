## Put comments here that give an overall description of what your
## functions do

## Make a special Matrix which can cache its value
makeCacheMatrix <- function(x = matrix()) {
  i <- NULL
  set <- function(y) {
    x <<- y
    i <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) i <<- inverse
  getinverse <- function() i
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
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
}


