## makeCacheMatrix  creates matrix to run four functions
## set stores matrix in cache
## setinverse and getinverse do same as but for the inverse of matrix

makeCacheMatrix <- function(x = matrix()) {
        i <- NULL
        set <- function(y){
          x <<- y
          i <<- NULL  #store matrix in cache
        }
        get <- function() x # get  value of thematrix
## set the inverse of the matrix
        setinverse <- function(solve) i <<- solve
        getinverse <- function() i    ## get inverse of matrix
        
        list(set = set, get = get, 
             setinverse = setinverse,
             getinverse = getinverse)


        }




cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
        i <- x$getinverse()
       ## check if matrix
         if(!is.null(i)) {
                    message("getting cached data")
                    return(i)
        }
        ##  get inverse of matrix
        data <- x$get()
        i <- solve(data, ...)
        x$setinverse(i)    ## set the inverse of the matrix
        i         
      
}
## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
