
#this project is literally just changing a little of the code they already gave you...

makeCacheMatrix <- function(x = matrix()) {
        invrse <- NULL
        set <- function(y){
                x <<- y
                invrse <<- NULL
        }
        get <- function() x
        setInverse <- function(solveMatrix) invrse <<- solveMatrix
        getInverse <- function() invrse
        list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}

cacheSolve <- function(x, ...) {
        invrse <- x$getInverse()
        if(!is.null(invrse)){
                message("getting cached data")
                return(invrse)
        }
        data <- x$get()
        invrse <- solve(data)
        x$setInverse(invrse)
        invrse      
}