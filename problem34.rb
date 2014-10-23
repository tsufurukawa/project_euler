# Problem 34 - Digit Factorials

# 145 is a curious number, as 1! + 4! + 5! = 1 + 24 + 120 = 145.
# Find the sum of all numbers which are equal to the sum of the factorial of their digits.
# Note: as 1! = 1 and 2! = 2 are not sums they are not included.

def factorial(number)
  return 1 if number == 1 || number == 0
  number * factorial(number - 1)
end

def sum_of_digit_factorials(number)
  number.to_s.chars.map(&:to_i).inject(0) { |sum, n| sum + factorial(n) }
end

total = 0

(10..100000).each { |n| total += n if sum_of_digit_factorials(n) == n }

puts total