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

test_that("Church-encoded numerals work", {
#  expect_equal(.to.integer(add(`_0_`)(`_1_`)), as.integer(1))
#  expect_equal(.to.integer(add(`_0_`)(`_2_`)), as.integer(2))  
#  expect_equal(.to.integer(add(`_0_`)(`_3_`)), as.integer(3))  
   expect_equal(.to.integer(`_0_`), as.integer(0))
   expect_equal(.to.integer(`_1_`), as.integer(1))
   expect_equal(.to.integer(`_2_`), as.integer(2))
   expect_equal(.to.integer(`_3_`), as.integer(3))
})


