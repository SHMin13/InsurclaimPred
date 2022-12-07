##' Cmtplhecking for colinearity among variables
##'
##'We want to check if any of the variables in the multivariate linear regression are correlated with each other. We will use VIF (variation inflation) to check the 
##' co linearity using 10 as criteria (VIF>10)
##' @title Colinearity test
##' @param data data set, preferrably data.frame
##' @param y outcome variable
##' @param crit criteria for variance inflation (default=10)
##' @return list of boolean results regarding if VIF was over the criteria
##' @author Seonghwa Min
##' @import car
##' @export
##' @examples
##' data(MTPL)
##' colin(MTPL,MTPL$nclaims,10)

colin <- function(data, y, crit = 10) {
    data <- as.data.frame(data)
    lms <- lm(y ~ ., data = data)
    gvif <- car::vif(lms)[, 1]
    print(gvif)
    gvif > crit
}


