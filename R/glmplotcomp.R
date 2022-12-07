##' Plot by tariff classes comparing glm models
##' 
##' We will compare two glm models and plot the rates using model with tariff classes. The original model with sort the clustering in the original order.
##' Use rating_factors() to compare the output obtained from two or more glm objects.
##' @title Plot comparing GLM models by tariff classes
##' @param object1 glm model 1 (typically null)
##' @param object2 glam model 2 (typically alternative)
##' @param model data set with tariff classes as a variable
##' @return plot of rates by age group (tariff classes)
##' @author Seonghwa Min
##' @import insurancerating
##' @export
##' @examples 
##' data(MTPL)
##' age_frequency <- fit_gam(data = MTPL, nclaims = nclaims, x = age_policyholder, exposure = exposure)
##' k<-addclustvar(age_frequency,MTPL)
##' model1<- glm(nclaims ~ freq_clusters, offset = log(exposure), family = "poisson", data = k)
##' model2 <- glm(nclaims ~ freq_clusters + age_policyholder, offset = log(exposure), family = "poisson", data = k)
##' glmplotcomp(model1,model2,k)


glmplotcomp <- function(object1, object2, model) {
    rating_factors(object1, object2, model_data = model) %>%
        autoplot()

}
