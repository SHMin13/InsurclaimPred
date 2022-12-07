##' P-values for each variable in multivariate linear regression with C.I.
##' 
##' We want to get the p-values for each variables in the multivariate linear regression.
##' @title P-values and Confidence interval for multivariate linear regression
##' @param data data set, preferrably data.frame
##' @param y outcome variable
##' @return list of pvalues and confidence interval for each variable
##' @author Seonghwa Min
##' @import tidyverse
##' @export
##' @examples
##' minpval(MTPL,MTPL$nclaims)

minpval <- function(data, y) {

    data <- data %>% select(-contains('claims'))
    lms <- lm(y ~ ., data = data)
    asum <- summary(lms)$coefficients
    print(asum[,"Pr(>|t|)"])
    confint(lms, level = 0.95)

}

