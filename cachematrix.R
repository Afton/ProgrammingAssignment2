## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  inverse <- NULL
  
  return(x)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  if ( ! is.null(x$inverse) )
  {
    return ( x$inverse)
  }
  
  x$inverse <- solve(x)
  
  return(x$inverse)
  
}
