#' Weighted Mean Squared Error
#' 
#' Calculate weighted or unweighted mean squared error.
#' 
#' @details 
#' Weighted MSE is calculated by multiplying the sum of squared errors betweem `y_h` and `y` by weights provided in the vector `wt`,
#' and dividing by the sum of weights, rather than N. 
#' 
#' @param y_h Vector of predicted values.
#' @param y Vector of true values.
#' @param wt Vector of sample weights.
#' 
#' @examples
#' #generate random data
#' a <- runif(100, 0, 3)
#' 
#' #simulate a linear dependent covariate with noise
#' b <- a + rnorm(100)
#' 
#' #check unweighted MSE
#' mse(a, b)
#' 
#' #generate random vector of weights
#' wt = runif(100)
#' 
#' #return weighted MSE
#' mse_wt(a, b, wt)
#' 
#' @export
#' 

#calculate weighted MSE
mse_wt <- function(y_h, y, wt){
  SS = sum((y - y_h)^2 * wt)
  SS/sum(wt)
}

#' @rdname mse_wt
#' @export
#' 

#calculate unweighted MSE
mse <- function(y_h, y){
  n = length(y)
  SS = sum((y - y_h)^2)
  SS/n
}


