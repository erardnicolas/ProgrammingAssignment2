## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## This function creates a special matrix, ie a list of four function to 
## set the value of the matrix, get the value of the matrix, set the 
## value of the solved matrix, get the value of the solved matrix.
makeCacheMatrix <- function(x = matrix()) {
    m<-NULL
    set <- function(y){
        x<<-y
        m<<-NULL
    }
    get<-function() x
    setsolvemat<-function(matrix) m<<-matrix
    getsolvemat<-function() m
    list(set=set,get=get,setsolvemat=setsolvemat,getsolvemat=getsolvemat)
}


## Write a short comment describing this function
## This function calculates the solved matrix of the object described above,
## it first checks if the solved matrix was calculated and cached before.

cacheSolve <- function(x, ...) {
    ## Return a matrix that is the inverse of 'x'
    m<-x$getsolvemat()
    if(!is.null(m)){
        message("getting cached data")
        return(m)
    }
    mat<-x$get()
    solvemat<-solve(mat)
    x$setsolvemat(solvemat)
    solvemat
}
