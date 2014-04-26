
## This function creates a special "matrix" object that is passed into the parent envriorment
##and the inverse of the matrix is also passed into the parent environment.
## I am assuming that the matrix supplied is always invertible and not yet cached

makeCacheMatrix <- function(x = matrix()) {
      cachedMatrix <- NULL
      
      ## create 'set' function to cache the input matrix variable
      set <- function(y) {
          x <<- y
          m <<- NULL
      }  
      ## create 'get' function to solve() the input matrix variable
      get <- solve(x)
      
      ## create and return a list of sub functions
      list(set = set, 
           get = get)
      
      ## newcachedmatrix<-makeCacheMatrix
      ## assigning this cached matrix to "newcachedmatrix" for clarity
}

## This function retrieves the inverse of the input matrix variable
cacheSolve <- function(x) makeCachMatrix$get(x)
  
}

      



