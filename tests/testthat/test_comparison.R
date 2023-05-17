test_that("`zerop?` works", {
    expect_identical(.to.logical(`zerop?`(C0)), TRUE)
    expect_identical(.to.logical(`zerop?`(C1)), FALSE)
    expect_identical(.to.logical(`zerop?`(C2)), FALSE)
    expect_identical(.to.logical(`zerop?`(sub(C2)(C2))), TRUE)
    expect_identical(.to.logical(`zerop?`(sub(C3)(C2))), FALSE)
    expect_identical(.to.logical(`zerop?`(sub(C3)(C3))), TRUE)
})

test_that("le (less than or equal to) works", {
    expect_identical(.to.logical(le(C1)(C1)), TRUE)
    expect_identical(.to.logical(le(C1)(C2)), TRUE)
    expect_identical(.to.logical(le(C2)(C1)), FALSE)
    expect_identical(.to.logical(le(C2)(C2)), TRUE)
})

test_that("lt (strictly less than) works", {
    expect_identical(.to.logical(lt(C1)(C1)), FALSE)
    expect_identical(.to.logical(lt(C1)(C2)), TRUE)
    expect_identical(.to.logical(lt(C2)(C1)), FALSE)
    expect_identical(.to.logical(lt(C2)(C2)), FALSE)
})
