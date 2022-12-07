##' Plot showing classes for claim frequency (frequency = number of claims / exposure))
##' 
##' We want to set up classes and plot based on frequency using construct_tariff_classes for generalized additive models(GAM). The GAM model is an extension
##' of linear model to fit even the nonlinear data
##' @title plotting classes for claim frequency using Generalized Additive Models
##' @param object GAM with frequency model
##' @return plot of age and predicted frequency divided with clusters
##' @author Seonghwa Min
##' @import insurancerating
##' @export
##' @examples
##' data(MTPL)
##' age_frequency <- fit_gam(data = MTPL, nclaims = nclaims, x = age_policyholder, exposure = exposure)
##' clustplot.claimfreqency(age_frequency)

 
clustplot.claimfreqency <- function(object) {

    autoplot(object, show_observations = TRUE)
    clusters_freq <- construct_tariff_classes(object)
    autoplot(clusters_freq, show_observations = TRUE)
}


