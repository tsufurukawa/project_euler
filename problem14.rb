# Problem 14 - Longest Collatz Sequence

# The following iterative sequence is defined for the set of positive integers:
# n → n/2 (n is even)
# n → 3n + 1 (n is odd)

# Using the rule above and starting with 13, we generate the following sequence:
# 13 → 40 → 20 → 10 → 5 → 16 → 8 → 4 → 2 → 1
# It can be seen that this sequence (starting at 13 and finishing at 1) contains 10 terms. Although it has not been proved yet (Collatz Problem), it is thought that all starting numbers finish at 1.

# Which starting number, under one million, produces the longest chain?

def odd_operation(number)
  3 * number + 1
end

def even_operation(number)
  number / 2
end

high_count = 0
longest_chain_number = 0

(500000..1000000).each do |n|
  count = 1
  number = n

  until number == 1 do
    number = (number.odd? ? odd_operation(number) : even_operation(number))
    count += 1
  end

  if count > high_count
    high_count = count
    longest_chain_number = n
  end
end

puts longest_chain_number