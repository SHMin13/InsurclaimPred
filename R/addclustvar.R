##' Adding constructed tariff classes for the outcome variable for frequency model
##'
##'We first add the constructed tariff classes for the outcome variable to the data set, and sets the base level of the factor to the level with
##'the largest exposure.
##' @title Adding constructed tariff classes
##' @param object GAM with frequency model
##' @param data data set with all x and y
##' @return mutated data set contain a column of age groups that was set up using tariff classes
##' @author Seonghwa Min
##' @import insurancerating
##' @export
##' @examples 
##' data(MTPL)
##' age_frequency <- fit_gam(data = MTPL, nclaims = nclaims, x = age_policyholder, exposure = exposure)
##' addclustvar(age_frequency,MTPL)


addclustvar <- function(object, data) {

    clusters_freq <- construct_tariff_classes(object)
    mutdata <- data %>%
        mutate(freq_clusters = clusters_freq$tariff_classes) %>%
        mutate(across(where(is.character), as.factor)) %>%
        mutate(across(where(is.factor), ~biggest_reference(., exposure)))

    summary(mutdata)
    return(invisible(mutdata))
}

