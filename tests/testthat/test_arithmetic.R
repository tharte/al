test_that("Add operator works", {
    expect_equal(.to.integer(add(C0)(C0)), as.integer(0))
    expect_equal(.to.integer(add(C0)(C1)), as.integer(1))
    expect_equal(.to.integer(add(C1)(C0)), as.integer(1))
    expect_equal(.to.integer(add(C1)(C1)), as.integer(2))
    expect_equal(.to.integer(add(C1)(C2)), as.integer(3))
    expect_equal(.to.integer(add(C2)(C1)), as.integer(3))
    expect_equal(.to.integer(add(C2)(C2)), as.integer(4))
    expect_equal(.to.integer(add(C2)(C3)), as.integer(5))
    expect_equal(.to.integer(add(C3)(C2)), as.integer(5))
})

test_that("Subtraction operator works", {
    expect_equal(.to.integer(sub(C0)(C0)), as.integer(0))
    expect_equal(.to.integer(sub(C1)(C0)), as.integer(1))
    expect_equal(.to.integer(sub(C2)(C0)), as.integer(2))
    expect_equal(.to.integer(sub(C3)(C0)), as.integer(3))

    expect_equal(.to.integer(sub(C1)(C1)), as.integer(0))
    expect_equal(.to.integer(sub(C2)(C1)), as.integer(1))
    expect_equal(.to.integer(sub(C3)(C1)), as.integer(2))

    expect_equal(.to.integer(sub(C2)(C2)), as.integer(0))
    expect_equal(.to.integer(sub(C3)(C2)), as.integer(1))
    expect_equal(.to.integer(sub(C4)(C2)), as.integer(2))

    expect_equal(.to.integer(sub(C3)(C3)), as.integer(0))
    expect_equal(.to.integer(sub(C3)(C2)), as.integer(1))
    expect_equal(.to.integer(sub(C3)(C1)), as.integer(2))

    expect_equal(.to.integer(sub(C4)(C4)), as.integer(0))
    expect_equal(.to.integer(sub(C4)(C3)), as.integer(1))
    expect_equal(.to.integer(sub(C4)(C2)), as.integer(2))
    expect_equal(.to.integer(sub(C4)(C1)), as.integer(3))
    expect_equal(.to.integer(sub(C4)(C0)), as.integer(4))
})

test_that("Multiplication operator works", {
    expect_equal(.to.integer(mul(C1)(C0)), as.integer(0))
    expect_equal(.to.integer(mul(C1)(C1)), as.integer(1))
    expect_equal(.to.integer(mul(C1)(C2)), as.integer(2))

    expect_equal(.to.integer(mul(C2)(C0)), as.integer(0))
    expect_equal(.to.integer(mul(C2)(C1)), as.integer(2))
    expect_equal(.to.integer(mul(C2)(C2)), as.integer(4))
    expect_equal(.to.integer(mul(C0)(C2)), as.integer(0))
    expect_equal(.to.integer(mul(C1)(C2)), as.integer(2))

    expect_equal(.to.integer(mul(C3)(C0)), as.integer(0))
    expect_equal(.to.integer(mul(C3)(C1)), as.integer(3))
    expect_equal(.to.integer(mul(C3)(C2)), as.integer(6))
    expect_equal(.to.integer(mul(C0)(C3)), as.integer(0))
    expect_equal(.to.integer(mul(C1)(C3)), as.integer(3))
    expect_equal(.to.integer(mul(C2)(C3)), as.integer(6))
})

