## call to makeCacheMatrix with matrix initializes object with four functions
## create object m   then  type m$ to see autocomplete of the functions
## in RStudio, click on m in values (Global Environment) to see functions
## example:   m <- makeCacheMatrix(matrix(rnorm(9), 3, 3))

makeCacheMatrix <- function(matobj = numeric()) {
  
  inv <- NULL

  ## can be called with new matrix data after initial makeCacheMatrix()
  set <- function(newmat) {
    ## superassignment operator for x and inv (global)
    matobj <<- newmat
    inv <<- NULL
  }

  ## output matrix
  get <- function() matobj

  ## NEVER CALL DIRECTLY - used by cacheSolve
  ## superassignment operator for m (global)
  setinv <- function(solve) inv <<- solve

  ## result is NULL until cacheSolve called to cache inverse
  getinv <- function() inv

  ## list of four functions for object
  list(set = set, get = get,
       setinv = setinv,
       getinv = getinv)
}
