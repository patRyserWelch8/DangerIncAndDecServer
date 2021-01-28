#'@name are.settings.and.env.correct
#'@title chech the settings and environment exists
#'@return TRUE - fine. False - not fine
are.settings.and.env.correct <- function()
{
  return(exists(".DangerEnv", envir = globalenv()))
}



#'@name get.env
#'@title get the package env
#'@return  the environment
#'@note returns an error if the settings are not correct.
get.env <- function()
{
  if(are.settings.and.env.correct())
  {
    return(get(".DangerEnv", envir = globalenv()))
  }
  else
  {
    stop("The package environment have been deleted. The computation cannot continue")
  }
}
