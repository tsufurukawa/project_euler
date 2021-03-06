# Problem 12 - Highly Divisible Triangular Number

# The sequence of triangle numbers is generated by adding the natural numbers. 
# So the 7th triangle number would be 1 + 2 + 3 + 4 + 5 + 6 + 7 = 28. The first ten terms would be: 
# 1, 3, 6, 10, 15, 21, 28, 36, 45, 55, ...

# Let us list the factors of the first seven triangle numbers:

# 1: 1
# 3: 1,3
# 6: 1,2,3,6
# 10: 1,2,5,10
# 15: 1,3,5,15
# 21: 1,3,7,21
# 28: 1,2,4,7,14,28
# We can see that 28 is the first triangle number to have over five divisors.
# What is the value of the first triangle number to have over five hundred divisors?

require 'pry'

def factors(number)
  1.upto(Math.sqrt(number)).select { |n| number % n == 0 }.inject([]) do |factors_array, n|
    factors_array << n
    factors_array << number / n unless n == number / n # for perfect score
    factors_array
  end
end

triangle_number = 1
increment = 2

until factors(triangle_number).size >= 500 do
  triangle_number += increment
  increment += 1
end

puts triangle_number