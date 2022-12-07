##'  Add prediction from GLM to the data set
##' 
##' We want to add predictions from the glms and add the prediction colum for each glm model.
##' @title adding predictions from glms
##' @param object1 glm model 1 (typically null)
##' @param object2 glam model 2 (typically alternative)
##' @param model data set with tariff classes as a variable
##' @return data set with predictions
##' @author Seonghwa Min
##' @import insurancerating
##' @export
##' @examples 
##' data(MTPL)
##' age_frequency <- fit_gam(data = MTPL, nclaims = nclaims, x = age_policyholder, exposure = exposure)
##' k<-addclustvar(age_frequency,MTPL)
##' model1<- glm(nclaims ~ freq_clusters, offset = log(exposure), family = "poisson", data = k)
##' model2 <- glm(nclaims ~ freq_clusters + age_policyholder, offset = log(exposure), family = "poisson", data = k)
##' glmpred(model1,model2,k)




glmpred <- function(object1, object2, model) {
    data_pred <- model %>%
        add_prediction(object1, object2)

    return(invisible(data_pred))

}
