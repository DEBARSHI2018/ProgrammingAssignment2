## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix<- function(x= matrix()){
  i<- NULL
  set<- function(y){
    x<<-y
    i<<-NULL
  } ## set the matrix
  get<-function() x ##get the matrix
  setinv<-function(inv) i<<-inv ## set the inverse
  getinv<- function() i ## get the inverse
  list(set= set, get= get,setinv= setinv,getinv=getinv)
}  ## this function sets an environment and cache the matrix provided by the reader
cacheSolve<- function(x, ...){
  i<- x$getinv() ##get the inverse if already calculated
  if(!is.null(i)){
    message("getting cached data")
    return(i)
  }
  data<- x$get()
  i<-solve(data, ...)
  x$setinv(i) ##set the inverse from the cached matrix
  i
} ## this function calculates the inverse of the matrix provided by the reader and puts the result in the designated space in previous function


## Write a short comment describing this function

