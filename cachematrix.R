
makingCacheMatrix <- function(){
        mat<-NULL
        inverse_cache<- NULL

        setMatrix<-function (x){
                craig<<- x
                inverse_cache<<-NULL
        }

        getInverse<-function(){
                if(is.null(inverse_cache){
                  inverse_cache<<-solve(craig)
                        }
                inverse_cache
        }

                   list(setMatrix= setMatrix, getInverse=getInverse)
        }
cacheSolve<- function (x, ..._{
        inverse_cache<- x$getInverse()
        inverse_cache
}
