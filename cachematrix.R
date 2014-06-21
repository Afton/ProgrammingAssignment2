## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  inverse <- NULL # cache storage
  
  # close over x
  getMatrix <- function() x
  
  # set the matrix and clear the cache
  setMatrix <- function(y = matrix()) 
  { 
    x <<- y
    inverse <<- NULL
  }
  
  # solve and cache the result
  computeInverse <- function(x) { inverse <<- solve( getMatrix() ) }
  
  # pull from cache
  getInverse <- function() { inverse }

    
  
  
  
  return( list( getMatrix = getMatrix
                , setMatrix = setMatrix
                , getMatrix = getMatrix
                , computeInverse = computeInverse
                , getInverse = getInverse
                )
        )
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  
  # Compute it if the cache is empty
  if ( is.null(x$getInverse() ) )
  {
    op <- options(); # store options settings
    options(digits.secs=6) # update for millisecond or better resolution
    print( paste("Computing Inverse at ", Sys.time()) )
    x$computeInverse()
    print( paste("Computed Inverse  at ", Sys.time()) )
    options(op)  # restore options
  }
  else
  {
    print("retrieving inverse from cache")
  }
  
  # at this point, we have an inverse, either retrieved from cache, or directly computed
  return(x$getInverse())
  
}
