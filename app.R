getModule <- function() {
  # private module variable
  data <- c(12,3,54,5)
  # private module function
  calculate_something <- function() {
    return(sd(data))
  }
  
  
  env <- new.env()
  #public functions
  env$create <- function() {
    return(calculate_something())
  }
  env$mean_it <- function() {
    return(mean(data))
  }
  return(env)
}