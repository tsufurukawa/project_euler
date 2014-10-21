# Problem 30 - Digiti Fifth Powers

# Surprisingly there are only three numbers that can be written as the sum of fourth powers of their digits:

# 1634 = 1^4 + 6^4 + 3^4 + 4^4
# 8208 = 8^4 + 2^4 + 0^4 + 8^4
# 9474 = 9^4 + 4^4 + 7^4 + 4^4
# As 1 = 14 is not a sum it is not included.

# The sum of these numbers is 1634 + 8208 + 9474 = 19316.
# Find the sum of all the numbers that can be written as the sum of fifth powers of their digits.

def sum_of_fifth_powers(number, power)
  sum_of_fifth_powers = number.to_s.chars.reduce(0) { |sum, number| sum + number.to_i**power }
end

number = 2
match = []
max = 6 * (9 ** 5)

until number == max
  match << number if sum_of_fifth_powers(number, 5) == number
  number += 1
end

puts match.reduce(&:+)