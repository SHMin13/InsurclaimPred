% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/dataCar.R
\docType{data}
\name{dataCar}
\alias{dataCar}
\title{One year vehicle insurance policy for 67856 observation}
\format{
a data frame with 67856 rows and 11 variables:
\describe{
\item{veh_value}{vehicle value, in $10,000s}
\item{exposure}{0-1, ratio of how much the vehicle was covered in a year, 1 means whole year}
\item{clm}{occurrence of claim (0 = no, 1 = yes)}
\item{numclaims}{number of claims}
\item{claimcst0}{claim amount}
\item{veh_body}{vehicle body, coded as BUS CONVT COUPE HBACK HDTOP MCARA MIBUS PANVN RDSTR SEDAN STNWG TRUCK UTE}
\item{veh_age }{1~4}
\item{gender}{a factor with levels F M}
\item{area}{a factor with levels A B C D E F}
\item{agecat}{1~6}
\item{X_OBSTAT_}{a factor with levels 01101 0 0 0}

}
}
\source{
\url{http://www.acst.mq.edu.au/GLMsforInsuranceData}
}
\usage{
dataCar
}
\description{
A dataset is based on one-year vehicle insurance policies taken out in 2004 or 2005. There are 67856 policies,
}
\keyword{datasets}
