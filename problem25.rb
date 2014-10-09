# Problem 25 - 1000-digit Fibonacci Number

# What is the first term in the Fibonacci sequence to contain 1000 digits?

fibonacci_number = 1
previous_fibonacci_number = 1
count = 2

while fibonacci_number.to_s.length < 1000 do
  temp_fibonacci_number = fibonacci_number
  fibonacci_number +=  previous_fibonacci_number
  previous_fibonacci_number = temp_fibonacci_number
  count += 1
end

puts count