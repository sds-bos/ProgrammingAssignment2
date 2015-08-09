# This function creates a special "matrix", which is really a list containing a function to:
# 1. set the value of the matrix;
# 2. get the value of the matrix;
# 3. set the value of the inverse; and
# 4. get the value of the inverse

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  get <- function() x
  setInverse <- function(inverse) inv <<- inverse
  getInverse <- function() inv
  list(set = set, get = get,
       setInverse = setInverse,
       getInverse = getInverse)
}