# Problem 48 - Self Powers

# The series, 1^1 + 2^2 + 3^3 + ... + 10^10 = 10405071317.
# Find the last ten digits of the series, 1^1 + 2^2 + 3^3 + ... + 10001000.

sum = 0

1.upto(1000) { |num| sum += num ** num }

puts sum.to_s[-10..-1]