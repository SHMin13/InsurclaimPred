##' Plot showing classes for claim severity (loss, severity = severity / number of claims)
##' 
##' We want to set up classes and plot based on severity using construct_tariff_classes for generalized additive models(GAM). The GAM model is an extension
##' of linear model to fit even the nonlinear data. The plot will show age of the policy holder and the predicted severity.
##' @title plotting classes for claim severity using Generalized Additive Models
##' @param object GAM with severity model
##' @return plot of age and predicted severity divided with clusters
##' @author Seonghwa Min
##' @import insurancerating
##' @export
##' @examples
##' data(MTPL)
##' age_severity <- fit_gam(data = MTPL, nclaims = nclaims, x = age_policyholder, exposure = exposure, amount = amount, model = "severity")
##' clustplot.claimseverity(age_severity)


clustplot.claimseverity <- function(object) {
    clusters_sev <- construct_tariff_classes(object)
    autoplot(object, show_observations = TRUE)
    autoplot(clusters_sev, show_observations = TRUE)
}
