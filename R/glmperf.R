##' Model performance for glm
##' 
##' We want to check how the model performed compared to each other. Therefore we will print out a table with AIC, BIC and RMSE. Also, we will
##' check for overdispersion for both glm functions.Lastly, we will also check the normality assumption for the standardized residual by lookin at the qq plot
##' @title Model performance (AIC, overdispersion, residuals)
##' @param object1 glm model 1 (typically null)
##' @param object2 glam model 2 (typically alternative)
##' @return plots and tables of the results from AIC, over dispersion and residuals
##' @author Seonghwa Min
##' @import insurancerating
##' @export
##' @examples 
##' data(MTPL)
##' model1<- glm(nclaims ~ freq_clusters, offset = log(exposure), family = "poisson", data = k)
##' model2 <- glm(nclaims ~ freq_clusters + age_policyholder, offset = log(exposure), family = "poisson", data = k)
##' glmperf(model1,model2)

glmperf<-function(object1,object2){
  print(model_performance(object1,object2))
  print(check_overdispersion(object1))
  print(check_overdispersion(object2))
  print(check_residuals(object1,n_simulations = 1000) %>% autoplot(.))
  print(check_residuals(object2,n_simulations = 1000) %>% autoplot(.))
}

