##' Looking for Influential points
##' 
##' We want to find the influential points for a certain outcome variable in a data set using linear regression.
##' @title Influential points for linear regression
##' @param data data set, preferrably data.frame
##' @param y outcome variable
##' @return index of the influential point
##' @author Seonghwa Min
##' @export
##' @examples 
##' influential(MTPL,MTPL$nclaims)

influential<-function(data, y){
  data<-as.data.frame(data)
  lms<-lm(y~.,data = data)
  plot(lms,4)
  abline(b=0,a=4/nrow(data),col="red")
  names(which(cooks.distance(lms) > 4/nrow(data)))
  }



