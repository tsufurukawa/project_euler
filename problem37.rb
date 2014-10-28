# Problem 37 - Truncatable Primes

# The number 3797 has an interesting property. Being prime itself, it is possible to continuously remove digits from left to right, 
# and remain prime at each stage: 3797, 797, 97, and 7. Similarly we can work from right to left: 3797, 379, 37, and 3.

# Find the sum of the only eleven primes that are both truncatable from left to right and right to left.
# NOTE: 2, 3, 5, and 7 are not considered to be truncatable primes.

def is_prime?(number)
  return false if number <= 1
  (2..Math.sqrt(number)).each { |x| return false if number % x == 0 }
  true
end

def is_right_truncatable_prime?(number)
  return true if number == 0
  is_prime?(number) ? is_right_truncatable_prime?(number / 10) : false
end

def is_left_truncatable_prime?(number)
  return true if number == 0
  is_prime?(number) ? is_left_truncatable_prime?(number.to_s.slice(1..-1).to_i) : false
end

truncatable_prime_count = 0
sum = 0
number = 10

until truncatable_prime_count == 11
  if is_right_truncatable_prime?(number) && is_left_truncatable_prime?(number)
    truncatable_prime_count += 1
    sum += number
  end
  number += 1
end

puts sum

