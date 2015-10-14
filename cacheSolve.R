## solve inverse of matrix and cache
cacheSolve <- function(matobj, ...) {
  ## matobjin$functions set in makeCacheMatrix
  ## first check if inverse matrix is cached
  inv <- matobj$getinv()
  if(!is.null(inv)) {
    message("getting cached data")
    ## return cached inverse
    return(inv)
  }

  ## get data from object  
  data <- matobj$get()
  ## solve to get inverse
  inv <- solve(data, ...)
  ## cache inverse
  matobj$setinv(inv)
  ## print inverse
  inv
  
}