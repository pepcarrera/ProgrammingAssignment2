## Put comments here that give an overall description of what your
## functions do

## Function returns a list of containing a fuction to set/get the
## value of the vector and set/get the value of the inverse of the mean


makeCacheMatrix <- function(x = matrix()) {
        n <- NULL
        set <- function(y) {
                x <<- y
                n <<- NULL
        }
        get <- function() x
        setinverse <- function(inverse) n <<- inverse
        getinverse <- function() n
        list(set = set, get = get, setinverse = setinverse, 
             getinverse = getinverse)
}


## Function checkes if the inverse of the matrix is in cache, if not
## it proceeds to calculate the inverse and sets the value in the cache
## via the setinverse function

cacheSolve <- function(x, ...) {
        n <- x$getinverse()
        if(!is.null(n)) {
                message("getting cached data")
                return(n)
        }
        data <- x$get()
        n <- solve(data, ...)
        ## Return a matrix that is the inverse of 'x'
        x$setinverse(n)
        n
        
        
        
}
