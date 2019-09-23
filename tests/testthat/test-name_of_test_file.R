test_that("multiplication works", {
  expect_equal(2 * 2, 4)
})

test_that("is a matrix", {
  A = matrix(1:4, 2, 2)
  B = matrix(4:1, 2, 2)
  expect_that(matrix_mult(A, B), is_a("matrix"))
})

test_that("has good dimension", {
  A = matrix(1:28, 4, 7)
  B = matrix(101:121, 7, 3)
  expect_equal(dim(matrix_mult(A, B)), c(4, 3))
})

test_that("matrix multiplication works", {
  A = matrix(1:4, 2, 2)
  B = matrix(4:1, 2, 2)
  C = matrix(c(13, 20, 5, 8), 2, 2, byrow = FALSE)
  expect_equal(matrix_mult(A, B), C)
})
