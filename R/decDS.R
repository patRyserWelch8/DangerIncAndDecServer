#'@name decDS
#'@title decrement by one
#'@Description blahblah
#'@export
decDS <- function()
{
   if(!is.env.correct())
   {
      set.env()
   }

   if(is.env.correct())
   {
     env <- get.env()
     if(exists("value", where = env))
     {
        value <- get("value", envir = env)
        assign("value", value - 1, envir = env)
     }
     else
     {
        assign("value",0,envir = env)
     }
     return(exists("value", where = env))
   }
   else
   {
      stop("the environment could not be created")
   }
}
