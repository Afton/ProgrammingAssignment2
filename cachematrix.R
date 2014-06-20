## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  inverse <- NULL
  getMatrix <- function() x
  
  setMatrix <- function(y = matrix()) 
  { 
    x <<- y
    inverse <<- NULL
  }
  
  computeInverse <- function(x) { inverse <<- solve( getMatrix() ) }
  getInverse <- function() { inverse }

    
  
  
  
  return( list( getMatrix = getMatrix
                , setMatrix = setMatrix
                , getMatrix = getMatrix
                , computeInverse = computeInverse
                , inverse = inverse
                )
        )
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  
  if ( is.null(x$inverse ) )
  {
    op <- options(); # store options settings
    options(digits.secs=6) # update for millisecond or better resolution
    print( paste("Computing Inverse at ", Sys.time()) )
    x$computeInverse()
    print( paste("Computed Inverse  at ", Sys.time()) )
    options(op)  # restore options
  }
  
  return(x$inverse)
  
}
