##' Normality Test
##' 
##' We are trying to assess the normality of standardized residuals using visual inspection from Q-Q plot and using Shapiro-Wilk normality
##' test.
##' @title Normality Test for standardized residuals
##' @param data data set, preferrably data.frame
##' @param y outcome variable
##' @return QQ plot and shapiro test p-value
##' @author Seonghwa Min
##' @export
##' @examples
##' data(MTPL) 
##' normality(MTPL,MTPL$nclaims)

normality<-function(data, y){
  data<-as.data.frame(data)
  lms<-lm(y~.,data = data)
  plot(lms,2)
  print(shapiro.test(sample(rstandard(lms),1000)))
  }
  



