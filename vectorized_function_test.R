# vectorized_function_test.R
# Clarice Landman-Montano
# 10/11/2026
# Vectorized Functions and Error Handling

# Function to square numbers and add 5
square_add_five <- function(numbers) {
  
  # Try the calculation
  result <- try(numbers^2 + 5, silent = T)
  
  # Check for errors
  if (class(result) == "try-error") {
    return(rep(NA, length(numbers)))
  } else {
    return(result)
  }
}

# Test 1: Numeric vector
numbers <- c(1, 2, 3, 4, 5)

# Test 2: Vector with a string
mixed_numbers <- c(1, 2, "hello", 4, 5)

# Apply function to test vectors
results <- lapply(list(numbers, mixed_numbers), square_add_five)

# Display results
print(results)