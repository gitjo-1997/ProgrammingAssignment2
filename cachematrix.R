## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## This function creates a list of funtions that allow
## for calculating setting and getting an inverse matrix.

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setinverse<-function(solve) m<<-solve
  getinverse<-function()m
  list(set = set, get = get, setinverse=setinverse, getinverse=getinverse)

}


## Write a short comment describing this function
## If the inverse of a special matrix has been calculated
## this function will retrieve the cached inverse.
## Otherwise the inverse will be calculated and cached
cacheSolve <- function(x, ...){
        ## Return a matrix that is the inverse of 'x'
  m <- x$getinverse()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(datamat<-)
  x$setinverse(m)
  m
}