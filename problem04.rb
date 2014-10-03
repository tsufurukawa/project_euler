# Problem 4 - Largest Palindrome Product

# A palindromic number reads the same both ways. The largest palindrome made from the product of 
# two 2-digit numbers is 9009 = 91 × 99. Find the largest palindrome made from the product of two 3-digit numbers.
require 'pry'

def is_palindrome?(number)
  number.to_s == number.to_s.reverse
end

product_max = 0

999.downto(100) do |num1|
  num1.downto(100) do |num2|
    product = num1 * num2
    break if product <= product_max
    product_max = product if is_palindrome?(product) && product > product_max
  end
end

puts product_max