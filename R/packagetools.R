#'@name is.env.correct
#'@title chech the settings and environment exists
#'@return TRUE - fine. False - not fine
is.env.correct <- function()
{
  return(exists(".DangerEnv", envir = globalenv()))
}

#'@name set.env
#'@title set the package env
#'@return  the environment
#'@note returns an error if the settings are not correct.
set.env <- function()
{
  assign('.DangerEnv', new.env(), envir = parent.env(environment()))
}

#'@name get.env
#'@title get the package env
#'@return  the environment
#'@note returns an error if the settings are not correct.
get.env <- function()
{
  if(is.env.correct())
  {
    return(get(".DangerEnv", envir = globalenv()))
  }
  else
  {
    stop("The package environment have been deleted. The computation cannot continue")
  }
}
