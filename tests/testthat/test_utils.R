test_that(".to.integer works", {
  expect_equal(.to.integer(`_0_`), 0)
  expect_equal(.to.integer(`_1_`), 1)
})

test_that(".to.logical works", {
  expect_equal(.to.logical(false), FALSE)
  expect_equal(.to.logical(true), TRUE)
})
