#n! means n × (n − 1) × ... × 3 × 2 × 1
#
#For example, 10! = 10 × 9 × ... × 3 × 2 × 1 = 3628800,
#and the sum of the digits in the number 10! is 3 + 6 + 2 + 8 + 8 + 0 + 0 = 27.
#
#Find the sum of the digits in the number 100!

prod = 100

99.downto(1) do |n|
  prod *= n
end

sum = 0

for n in 0...prod.to_s.length
  sum += n
end

puts sum
