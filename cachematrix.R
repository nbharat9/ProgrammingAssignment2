## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
## set the value of the matrix
  a<- NULL
  set <- function(p) {
    x <<- p
    a <<- NULL
  }
  

## get the value of the matrix
  get <- function() x
  
## set the inverse of the matrix
  setinv <- function(solve) a <<- solve
  getinv <- function() a
  
## get the inverse of the matrix
  list(set = set, get = get,
       setinv = setinv,
       getinv = getinv)
}



## Write a short comment describing this function

cacheSolve <- function(x, ...) {
## Return a matrix that is the inverse of 'x'
## get the inverse of the matrix        
  i <- x$getinv()
  
  ## check if there is the matrix   
  if(!is.null(i)) {
    message("getting cached data")
    return(i)
  }
  ## if not: get the inverse of the matrix   
  data <- x$get()
  i <- solve(data, ...)
  ## set the inverse of the matrix 
  x$setinv(i)
  i
}

}
