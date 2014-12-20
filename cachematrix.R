#Caching the Inverse of a Matrix
# Matrix inversion is usually a costly computation.
#There may be some benefit to caching the inverse of a matrix rather than compute it repeatedly.


makeCacheMatrix <- function(x = matrix()) {
  #creates a list of functions that can cache the inverse of a matrix
  m<-NULL
  set<-function(y){
    x<<-y
    m<<-NULL
  }
  get<-function() x
  setInvmatrix<-function(inverse) m<<- inverse
  getInvmatrix<-function() m
  list(set=set, get=get,
       setInvmatrix=setInvmatrix,
       getInvmatrix=getInvmatrix)
}

cacheSolve <- function(x, ...) {
  # Return a matrix that is the inverse of 'x'
  m<-x$getInvmatrix()
  if(!is.null(m)){
    message("getting cached data")
    return(m)
  }
  matrix<-x$get()
  m<-solve(matrix, ...)
  x$setInvmatrix(m)
  m
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
