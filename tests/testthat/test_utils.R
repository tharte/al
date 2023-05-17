test_that(".to.integer works", {
  #expect_equal(true(1)(2), 1)          
  #expect_equal(false(1)(2), 2)          
})

test_that(".to.logical works", {
  expect_equal(.to.logical(false), FALSE)
})
