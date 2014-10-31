# Problem 52 - Permuted Multiples

# It can be seen that the number, 125874, and its double, 251748, contain exactly the same digits,
# but in a different order.
# Find the smallest positive integer, x, such that 2x, 3x, 4x, 5x, and 6x, contain the same digits.

def is_permuted_multiple?(number)
  digits_array = number.to_s.chars.sort
  2.upto(6) do |multiple|
    return false unless (number * multiple).to_s.chars.sort == digits_array
  end
  true
end

number = 1
number += 1 until is_permuted_multiple?(number)

puts number