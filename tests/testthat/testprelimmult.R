test_that("Test if prelimmult",{
  library(insurancerating)
  data(MTPL)
  expect_equal(InsurclaimPred::prelimmult(MTPL,MTPL$nclaims),summary(lm(MTPL$nclaims~.,data=MTPL))$coefficient)
}
)