# This function calculates the inverse of the special "matrix" created with makeCacheMatrix
# However, it first checks to see if the inverse has already been calculated.
# If so, it gets the inverse from the cache and skips the computation.
# Else, it calculates the inverse and sets it in the cache via the setInverse function.

cacheSolve <- function(x) {
  inv <- x$getInverse()
  if(!is.null(inv)) {
    message("getting cached data")
    return(inv)
  }
  data <- x$get()
  inv <- solve(data)
  x$setInverse(inv)
  inv
}