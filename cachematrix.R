
## The functions below are used to cache the inverse of a matrix
## The makeCacheMatrix creates a list containing the function to , set the value of the matrix, get the value, set 
## the value of the inverse of the matrix and get the value of the inverse. 

makeCacheMatrix <- function(x = matrix()) {
    inv <- NULL
    set <- function(y) {x <<- y inv <<- NULL}
    get <- function() x
    setinverse <- function(inverse) inv <<- inverse
    getinverse <- function() inv
    list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
}



## The following function returns the inverse of the matrix. 
## It checks if the inverse has been computed, ans if true returns the result and skips the computation. 
## If not, if computes the inverse, sets the value in the cache by the setinverse function. 
## 
cacheSolve <- function(x, ...) {
    inv <- x$getinverse()
    if(!is.null(inv)) {
    message("retrieved data.")
    return(inv)}
    data <- x$get()
    inv <- solve(data)
    x$setinverse(inv)
    inv}

