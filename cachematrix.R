makeCacheMatrix <- function(z = matrix(rnorm(1000), nrow=100,ncol=100)) {
        mat <- NULL
        set <- function(y) {
                z <<- y
                m <<- NULL
        }
        get <- function() z
        setinv <- function(inverse) mat <<- inverse
        getinv <- function() mat
        list(set = set, get = get,setinv = setinv, getinv = getinv)
}


cacheSolve <- function(z, ...) {
        m <- z$getinverse()
        if(!is.null(m)) {sol
                message("it is cached data")
                return(m)
        }
        data <- z$get()
        m <- inverse(data, ...)
        x$setinv(m)
        m
}

# testing time to procesing function and cache
start.time <- Sys.time()
makeCacheMatrix
end.time <- Sys.time()
time.taken <- end.time - start.time
time.taken

start.time1 <- Sys.time()
cacheSolve
end.time1 <- Sys.time()
time.taken1 <- end.time1 - start.time1
time.taken1

timediff <- time.taken - time.taken1
timediff

