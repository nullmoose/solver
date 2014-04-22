#The sequence of triangle numbers is generated by adding the natural numbers. So the 7th triangle number would be 1 + 2 + 3 + 4 + 5 + 6 + 7 = 28. The first ten terms would be:
#
#1, 3, 6, 10, 15, 21, 28, 36, 45, 55, ...
#
#Let us list the factors of the first seven triangle numbers:
#
# 1: 1
# 3: 1,3
# 6: 1,2,3,6
#10: 1,2,5,10
#15: 1,3,5,15
#21: 1,3,7,21
#28: 1,2,4,7,14,28
#We can see that 28 is the first triangle number to have over five divisors.
#
#What is the value of the first triangle number to have over five hundred divisors?

def countfactors(num)
  
  fcount = 0
  
  for i in 1..Math.sqrt(num)
    if num % i == 0
      if i == Math.sqrt(num)
        fcount += 1
      else
        fcount += 2
      end
      
    end
  end
  
  return fcount
end

found = false
n = 1
tri = 0

while !found
  tri += n
  n += 1
  
  if countfactors(tri) > 500
    found = true
  end
end

puts tri
