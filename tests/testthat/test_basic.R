test_that("identity combinator works", {
    .a<-   \(x) x
  .true<-  \(x) \(y) x
  .false<- \(x) \(y) y

  expect_identical(ID(a), a)             # identity of the identity is the identity
  expect_identical(ID(.true), .true)     # identity of Boolean truth is Boolean truth
  expect_identical(ID(.false), .false)   # identity of Boolean falsity is Boolean falsity
})
