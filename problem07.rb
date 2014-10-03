# Problem 7 - 10001st Prime

# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
# What is the 10 001st prime number?

def is_prime?(number)
  (2..Math.sqrt(number)).each { |x| return false if number % x == 0 }
  true
end

prime_array = []
number = 1

until prime_array.size == 10001 do
  number += 1
  prime_array << number if is_prime?(number)
end

puts number