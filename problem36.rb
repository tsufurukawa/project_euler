# Problem 36 - Double Base Palindromes

# The decimal number, 585 = 1001001001 (binary), is palindromic in both bases.
# Find the sum of all numbers, less than one million, which are palindromic in base 10 and base 2.
# (Please note that the palindromic number, in either base, may not include leading zeros.)

def is_palindrome?(number)
  number.to_s == number.to_s.reverse && number.to_s(2) == number.to_s(2).reverse
end

sum = 0
1.upto(1000000) { |n| sum += n if is_palindrome?(n) }

puts sum