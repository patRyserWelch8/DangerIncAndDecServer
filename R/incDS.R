#'@name incDS
#'@title increment by one
#'@Description blahblah
#'@export
incDS <- function()
{
   outcome <- FALSE
   if(are.settings.and.env.correct())
   {
     env <- get.env()
     if(exists("value", where = env))
     {
        value <- get("value", envir = env)
        assign("value", value + 1, envir = env)
     }
     else
     {
        assign("value",1,envir = env)
     }
     outcome <- exists("value", where = env)
   }

   return(outcome)
}
