## Let 'x' be a square invertible matrix
## return: a list containing functions to
##              1. set the matrix
##              2. get the matrix
##              3. set the inverse
##              4. get the inverse
##         this list is used as the input to cacheSolve()

## This will cache a result that could be time consuming 

makeCacheMatrix <- function(x = matrix()) {
#Set Inverse to NULL
Inv <<- NULL  

set<- function(y){
              x <<-y
              ##R wont return a y NOT FOUND since y is enclosed by the function.
      Inv <<- NULL
          
  }

#display x
  get<- function(){
        x
  }
    setInverse <- function(Inverse){
    Inv <<- Inverse
  }
  
  #Return Inverse
  getInverse <- function(){
    
    Inv
  
  }
##Returns a list of all the arguments as lists  
  
  
list(set = set , get = get , setInverse = setInverse , getInverse = getInverse)  
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  Inv <- x$getInverse()
  
  #If the inverse has already been calculated then fetch the result.
  
  if(!is.null(Inv)){
    
    message("Fetching Cached Data")
    return(Inv)
    
  }
  ##If not, then calculate it and cache the result for future refference.
  data <- x$get()
    Inv <- solve(data,...)
      x$setInverse(Inv)
        #View the handywork
        Inv
} 


