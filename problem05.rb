# Problem 5 - Smallest Multiple

# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

least_common_multiple = (1..20).to_a.inject(:lcm)
puts least_common_multiple