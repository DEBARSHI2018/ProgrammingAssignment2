## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix<- function(x= matrix()){
  i<- NULL
  set<- function(y){
    x<<-y
    i<<-NULL
  }
  get<-function() x
  setinv<-function(inv) i<<-inv
  getinv<- function() i
  list(set= set, get= get,setinv= setinv,getinv=getinv)
}  ## this function cache the matrix provided by the reader
cacheSolve<- function(x, ...){
  i<- x$getinv()
  if(!is.null(i)){
    message("getting cached data")
    return(i)
  }
  data<- x$get()
  i<-solve(data, ...)
  x$setinv(i)
  i
} ## this function calculates the inversee of the matrix provided by the reader and puts the result in the designated space in previous function


## Write a short comment describing this function
