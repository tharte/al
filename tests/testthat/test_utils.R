test_that(".to.integer works", {
    expect_equal(.to.integer(C0), 0)
    expect_equal(.to.integer(C1), 1)
})

test_that(".to.logical works", {
    expect_equal(.to.logical(false), FALSE)
    expect_equal(.to.logical(true), TRUE)
})
