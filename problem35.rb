# Problem 35 - Circular Primes

# The number, 197, is called a circular prime because all rotations of the digits: 197, 971, and 719, are themselves prime.
# There are thirteen such primes below 100: 2, 3, 5, 7, 11, 13, 17, 31, 37, 71, 73, 79, and 97.
# How many circular primes are there below one million?

def is_prime?(number)
  (2..Math.sqrt(number)).each { |x| return false if number % x == 0 }
  true
end

def is_circular_numbers_prime?(number)
  count = 0
  number_string = number.to_s
  number_length = number_string.length

  while count < number_length
    return false unless is_prime?(number_string.to_i)
    number_string.prepend(number_string.slice!(-1))
    count += 1
  end
  true
end

count = 0

2.upto(1000000) do |num|
  count += 1 if is_circular_numbers_prime?(num)
end

puts count