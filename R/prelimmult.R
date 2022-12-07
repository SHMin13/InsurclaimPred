##' Preliminary multivariate linear regression
##'
##' We want to look at how other variable are related to the outcome variable y.
##' @title Preliminary multivariate linear regression analysis
##' @param data data set, preferrably data.frame
##' @param y outcome variable
##' @return summary of coefficients
##' @author Seonghwa Min
##' @import tidyverse
##' @export
##' @examples
##' data(MTPL)
##' prelimmult(MTPL,MTPL$nclaims)


prelimmult <- function(data, y) {
    data <- data %>% select(-contains('claims'))
    lms <- lm(y ~ . , data = data)
    asum <- summary(lms)$coefficients
    asum
}


