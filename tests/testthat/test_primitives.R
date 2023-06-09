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
    expect_equal(.to.integer(C4), as.integer(4))
    expect_equal(.to.integer(C5), as.integer(5))
    expect_equal(.to.integer(C6), as.integer(6))
    expect_equal(.to.integer(C7), as.integer(7))
    expect_equal(.to.integer(C8), as.integer(8))
    expect_equal(.to.integer(C9), as.integer(9))
    expect_equal(.to.integer(C10), as.integer(10))
})

test_that("Successor combinator works", {
    expect_equal(.to.integer(succ(C0)), as.integer(1))
    expect_equal(.to.integer(succ(C1)), as.integer(2))
    expect_equal(.to.integer(succ(C2)), as.integer(3))

#   FIXME: following not working
#   expect_equal(succ(succ(C0)), C2)
#   expect_equal(succ(succ(succ(C0))), C3)
})

test_that("Predecessor combinator works", {
    expect_equal(.to.integer(pred(succ(C0))), 0)
    expect_equal(.to.integer(pred(succ(C1))), 1)
    expect_equal(.to.integer(pred(succ(C2))), 2)
    expect_equal(.to.integer(pred(succ(C3))), 3)
})

test_that("Primitives work to alternatively define Church numerals", {
    expect_equal(.to.integer(succ(C3)), 4)
    expect_equal(.to.integer(add(C2)(C3)), 5)
    expect_equal(.to.integer(mul(C2)(C3)), 6)
    expect_equal(.to.integer(succ(succ(succ(succ(succ(succ(C1))))))), 7)
    expect_equal(.to.integer(pred(mul(C3)(C3))), 8)
    expect_equal(.to.integer(exp(C3)(C2)), 9)
    expect_equal(.to.integer(sub(add(C8)(C3))(C1)), 10)
})

