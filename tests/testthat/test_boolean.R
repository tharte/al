test_that("Boolean primitives work", {
  expect_equal(true(1)(2), 1)          
  expect_equal(false(1)(2), 2)          
})

# AND: truth table
test_that("Boolean AND works", {
  expect_identical(and(false)(false), false)
  expect_identical(and(false)(true),  false)
  expect_identical(and(true)(false),  false)
  expect_identical(and(true)(true),   true)
})
