## Both the functions work in tandem to cache the inverse of the matrix and to provide the results
## In case the cache is empty, normal calculations happen. 

## makeCacheMatrix - creates a matrix object that caches its inverse.

makeCacheMatrix <- function(x = matrix()) {
  minverse<-NULL
  m<<-solve(x)
  return (m)
  
}



## cacheSolve computes the inverse of the matrix returned by makeCacheMatrix above. 
## If the inverse has already been calculated, then the function retrieves the inverse from the cache.

cacheSolve <- function(x, ...) {
  ## Returns a matrix that is the inverse of 'x'
minverse<-makeCacheMatrix(x)
if(!is.null(minverse)) {
  message("getting cached data")
  return(minverse)
}
minverse <-solve(x)  
}
