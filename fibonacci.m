####################################################################################################
#
# CSC781M: DSP/DIP
# Exercise 2
#
# fibonacci.m
#
# Author:  Narciso, I.O.
# Created: 7 Oct, 2018
#
####################################################################################################
# A Fibonacci function-file as per instructions.
#
# Solved using dynamic-programming.
#
# RETURNS F - a column vector F containing the first-n elements of the fibonacci sequence.
# ACCEPTS n - the first-n elements of the fibonacci sequence that you wanted to return.
#
function F = fibonacci(n)
  # Let's initialize the fibonacci as a column vector of zeros of size n.
  fibonacci = zeros(1, n)

  # Iterate through the sequence
  for col = 1:columns(fibonacci)
    # Initialize base cases 
    if col == 1
      fibonacci(1, col) = 0
    elseif col == 2
      fibonacci(1, col) = 1
    else
      # Since previous computations are memoized, the sequence calculation
      # frequency is n-2, leaving a time-complexity of O(n)
      fibonacci(1, col) = fibonacci(1, col - 1) + fibonacci(1, col - 2)
    end
  end
  # Return the sequence as a column vector
  F = fibonacci
endfunction
####################################################################################################