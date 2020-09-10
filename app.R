get_module <- function() {
  # private module variable
  data <- c(12L, 3L, 54L, 5L)
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
