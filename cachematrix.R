## Put comments here that give an overall description of what your
## functions do

## makeChacheMatrix creates a matrix object and cacheSolve calculates the solved matrix

## Creating test matrixes
m1 <- matrix(c(1/2, -1/4, -1, 3/4), nrow = 2, ncol = 2)
I2 <- matrix(c(1,0,0,1), nrow = 2, ncol = 2)
n1 <- matrix(c(6,2,8,4), nrow = 2, ncol = 2)
n2 <- matrix(c(5/8, -1/8, -7/8, 3/8), nrow = 2, ncol = 2)

## Write a short comment describing this function

## makeCacheMatrix creates a matrix object
## and functions and objects to get and set a solved matrix

makeCacheMatrix <- function(x = matrix()) {

    m <- NULL
    set <- function(y) {
      x <<- y
      m <<- NULL
    }
    get <- function() x
    setSolve <- function(solve) m <<- solve
    getSolve <- function() m
    list(set = set, get = get,
         setSolve = setSolve,
         getSolve = getSolve)
  
}

## Write a short comment describing this function
## Return a matrix that is the inverse of 'x'.

## If there is a solution in the makeChacheMatrix object, 
## it returns it from cache with the corresponding message
## otherwise it gets the data from the makeCacheMatrix object
## solves it, sets it 'to cache' and returns it.

cacheSolve <- function(x, ...) {
        
    m <- x$getSolve()
    if(!is.null(m)) {
      message("getting cached data")
      return(m)
    }
    data <- x$get()
    m <- solve(data, ...)
    x$setSolve(m)
    m
    
}

# Is this GITting ;-)? Yes; yay!!