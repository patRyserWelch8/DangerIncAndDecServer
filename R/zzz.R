


.onLoad <- function(libname, pkgname)
{
  assign('.DangerEnv', new.env(), envir = parent.env(environment()))
}



