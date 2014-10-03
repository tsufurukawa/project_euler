# Problem 3 - Largest Prime Factor

# The prime factors of 13195 are 5, 7, 13 and 29.
# What is the largest prime factor of the number 600851475143 ?

def isPrime?(number)
  (2..Math.sqrt(number)).each { |x| return false if number % x == 0 }
  true
end

number = 600851475143

puts (2..Math.sqrt(number)).select { |x| isPrime?(x) && number % x == 0 }.last
