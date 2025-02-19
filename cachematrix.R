####creating a special matrix object that can cache its inverse#######

makeCacheMatrix <- function(x = matrix()) {
  p <- NULL
  set <- function(y){
  x <<- y
  p <<- NULL
  }
  get <- function()x
  setInverse <- function(inverse) p <<- inverse
  getInverse <- function() p 
  list(set = set, get = get, 
  setInverse = setInverse, 
  getInverse = getInverse)
}


cacheSolve <- function(x, ...) {
## Return a matrix that is the inverse of 'x'
  f <- x$getInverse()
  if(!is.null(j)){
  message("getting cached data")
  return(f)
  }
  mat <- x$get()
  f <- solve(mat,...)
  x$setInverse(f)
  f
}
