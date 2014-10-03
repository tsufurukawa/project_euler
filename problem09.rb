# Problem 9 - Special Pythagorean Triplet

# A Pythagorean triplet is a set of three natural numbers, a < b < c, for which, a^2 + b^2 = c^2
# For example, 32 + 42 = 9 + 16 = 25 = 52.
# There exists exactly one Pythagorean triplet for which a + b + c = 1000. Find the product abc.


# Note:
 # biggest possible 'a' is 332 because 'a < b < c'
 # smallest possible 'b' is 499, which is when assuming 'a' is 1

a = 1
b = 1
product = 0
flag = true

while a <= 333 && flag == true do
  b = 1
  while b <= 500 do
    c = 1000 - a - b
    if a**2 + b**2 == c**2
      product = a * b * c
      flag = false
      break
    end
    b += 1
    puts "a: #{a}, b: #{b}"
  end
  a += 1
end

puts product