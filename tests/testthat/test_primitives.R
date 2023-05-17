test_that("identity combinator works", {
    .a<-   \(x) x
  .true<-  \(x) \(y) x
  .false<- \(x) \(y) y

  expect_identical(ID(.a), .a)           # identity of the identity is the identity
  expect_identical(ID(.true), .true)     # identity of Boolean truth is Boolean truth
  expect_identical(ID(.false), .false)   # identity of Boolean falsity is Boolean falsity
})

test_that("branching combinator works", {
    .a<-   \(a) a
    .b<-   \(b) b
    
  expect_identical(IF(true)(.a)(.b), .a)
  expect_identical(IF(false)(.a)(.b), .b)
})
