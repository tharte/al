test_that("Boolean primitives work", {
  .true<-  \(x) \(y) x
  .false<- \(x) \(y) y

  expect_equal(true(1)(2), 1)          
  expect_equal(false(1)(2), 2)          
})
