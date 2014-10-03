# Problem 10 - Summation of Primes

# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
# Find the sum of all the primes below two million.

require 'prime'

sum = 0
(1...2000000).each { |n| sum += n if Prime.prime?(n) }
puts sum