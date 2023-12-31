test_data <- matrix(
  c(
    NA, NA, 1, 2, 3, NA,
    4, 5, 6, 7, 8, 9,
    NA, NA, NA, NA, NA, NA
  ),
  nrow = 3,
  byrow=TRUE,
)

# Test cases
test_that("get_vars calculates variances and sums correctly", {
  result <- get_vars(test_data, n_replicates = 4)
  
  # Check if variances are calculated correctly
  expect_equal(result$variances, c(1.0, 1 + 2/3, NA), tolerance=0.001)
  
  # Check if total sum is calculated correctly
  expect_equal(result$total_sum, 36)
  
  # Check if sum of squares (ssq) is calculated correctly
  expect_equal(result$ssq, 244)
  
  # Check if the number of measurements is calculated correctly
  expect_equal(result$num_measurements, 12)
})