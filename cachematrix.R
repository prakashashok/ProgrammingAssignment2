## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
matrix_inv <- NULL
+        set <- function(y) 
+        {
+                x <<- y
+                matrix_inv <<- NULL
+        }
+        get <- function() x
+        
+        setinverse <- function(inverse) 
+        {
+                matrix_inv <<- inverse
+        }
+        getinverse <- function() matrix_inv
+ 
+        list(set = set, get = get,
+            setinverse = setinverse,
+            getinverse = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        matrix_inv <- funclist$getinverse()
+        if (!is.null(matrix_inv)) 
+        {
+                print ("getting cached inverse matrix")
+        } 
+        else 
+        {
+                print ("Computing inverse")
+                matrix_inv <- solve(funclist$get(), ...)
+                funclist$setinverse(matrix_inv)
+                
+        }
+        matrix_inv

}
