## Make, inverse, and cache matrices

## makes and caches a matrix
makeCacheMatrix <- function(x = matrix()) {
	inv <- NULL
	set <- function(y){
		x <<- y
		inv <<- NULL
	}
	get <- function()x
	setinv<- function(inverse) inv <<- inverse
	getinv <- function()inv
	list(set = set, get = get, setinv = setinv, getinv = getinv)
}

## evaluates matrix, either accesses cached and inverted matrix or
## inverts matrix 

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
	if(!is.null(inv)){
		message("getting cached data")
		return(inv)
	}
	data <- x$get()
	inv <- inverse(data,...)
	x$setinv(inv)
	return(inv)
}
