## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        set <- function(y){
                x <<- y
                m <<- NULL
        }
        get <- function() x
        set_matrix_inverse <- function(matrix_inverse) m <<- matrix_inverse
        get_matrix_inverse <- function() m
        list(set = set, get = get, set_matrix_inverse = set_matrix_inverse,
             get_matrix_inverse = get_matrix_inverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m <- x$get_matrix_inverse()
        if(!is.null(m)){
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- solve(x)
        x$set_matrix_inverse(m)
        m
}
