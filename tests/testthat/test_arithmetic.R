test_that("Add operator work", {
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

