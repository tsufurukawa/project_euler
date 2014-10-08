# Problem 17

# If the numbers 1 to 5 are written out in words: one, two, three, four, five, then there are 3 + 3 + 5 + 4 + 4 = 19 letters used in total.
# If all the numbers from 1 to 1000 (one thousand) inclusive were written out in words, how many letters would be used?
# NOTE: Do not count spaces or hyphens. For example, 342 (three hundred and forty-two) contains 23 letters and 115 (one hundred and fifteen) 
# contains 20 letters. The use of "and" when writing out numbers is in compliance with British usage.
require 'pry'

special_numbers = {
  1 => "one",
  2 => "two",
  3 => "three",
  4 => "four",
  5 => "five", 
  6 => "six",
  7 => "seven",
  8 => "eight",
  9 => "nine",
  10 => "ten",
  11 => "eleven",
  12 => "twelve",
  13 => "thirteen",
  14 => "fourteen",
  15 => "fifteen",
  16 => "sixteen",
  17 => "seventeen",
  18 => "eighteen",
  19 => "nineteen",
  20 => "twenty",
  30 => "thirty",
  40 => "forty",
  50 => "fifty",
  60 => "sixty",
  70 => "seventy",
  80 => "eighty",
  90 => "ninety"
}

count = 0

1.upto(9) do |number|
  count += special_numbers[number].length
  puts special_numbers[number]
end

10.upto(99) do |number|
  ones = number % 10

  if number.between?(11, 19) 
    tens = number % 100
    ones = ""
  else
    tens = number - ones
  end
  
  number_in_word = special_numbers[tens] + (special_numbers[ones] || "")
  count += number_in_word.length
  puts number_in_word
end

100.upto(999) do |number|
  ones = number % 10

  if (number % 100).between?(11, 19)
    tens = number % 100
    ones = ""
  else
    tens = number % 100 - ones
  end

  hundreds = number / 100

  need_and = (tens == 0 && ones == 0) ? false : true

  number_in_word = special_numbers[hundreds] + "hundred" + (need_and ? "and" : "") + (special_numbers[tens] || "") + (special_numbers[ones] || "")
  count += number_in_word.length
  puts number_in_word
end

puts count + "onethousand".length