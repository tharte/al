test_that("Y-combinator works", {
    Y(\(r) \(n)
        `zerop?`(n)(C0)
        (`IF`(eq(n)(C1))
            (C1)
            (\(x) add (r( sub(n)(C1) )) (r( sub(n)(C2) )) (x)))) -> fibonacci

    expect_equal(.to.integer(fibonacci(C0)), 0)
    expect_equal(.to.integer(fibonacci(C1)), 1)
    expect_equal(.to.integer(fibonacci(C2)), 1)
    expect_equal(.to.integer(fibonacci(C3)), 2)
    expect_equal(.to.integer(fibonacci(C4)), 3)
    expect_equal(.to.integer(fibonacci(C5)), 5)
    expect_equal(.to.integer(fibonacci(C6)), 8)
    expect_equal(.to.integer(fibonacci(C7)), 13)
    expect_equal(.to.integer(fibonacci(C8)), 21)
    expect_equal(.to.integer(fibonacci(C9)), 34)
    expect_equal(.to.integer(fibonacci(C10)), 55)
})

