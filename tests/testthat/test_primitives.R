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
#  expect_equal(.to.integer(add(C0)(C1)), as.integer(1))
#  expect_equal(.to.integer(add(C0)(C2)), as.integer(2))  
#  expect_equal(.to.integer(add(C0)(C3)), as.integer(3))  
   expect_equal(.to.integer(C0), as.integer(0))
   expect_equal(.to.integer(C1), as.integer(1))
   expect_equal(.to.integer(C2), as.integer(2))
   expect_equal(.to.integer(C3), as.integer(3))
})


