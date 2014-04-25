#2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
#What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

found = false
n = 2500

while !found do
  found = true
  n += 20
  
  for i in 1..20
    if n % i != 0
      found = false
      break
    end
  end
  
end

puts n