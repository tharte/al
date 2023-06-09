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

test_that("eq (strictly equal to) works", {
    expect_identical(.to.logical(eq(C0)(C0)), TRUE)
    expect_identical(.to.logical(eq(C1)(C1)), TRUE)
    expect_identical(.to.logical(eq(C1)(C2)), FALSE)
    expect_identical(.to.logical(eq(C2)(C1)), FALSE)
    expect_identical(.to.logical(eq(C2)(C2)), TRUE)
    expect_identical(.to.logical(eq(C3)(C3)), TRUE)
    expect_identical(.to.logical(eq(C4)(C3)), FALSE)
    expect_identical(.to.logical(eq(C3)(C4)), FALSE)
    expect_identical(.to.logical(eq(C4)(C4)), TRUE)
})

test_that("ge (strictly equal to) works", {
    expect_identical(.to.logical(ge(C0)(C0)), TRUE)
    expect_identical(.to.logical(ge(C1)(C1)), TRUE)
    expect_identical(.to.logical(ge(C1)(C2)), FALSE)
    expect_identical(.to.logical(ge(C2)(C1)), TRUE)
    expect_identical(.to.logical(ge(C2)(C2)), TRUE)
    expect_identical(.to.logical(ge(C3)(C3)), TRUE)
    expect_identical(.to.logical(ge(C4)(C3)), TRUE)
    expect_identical(.to.logical(ge(C3)(C4)), FALSE)
    expect_identical(.to.logical(ge(C4)(C4)), TRUE)
})
