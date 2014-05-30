#A perfect number is a number for which the sum of its proper divisors is exactly equal to
#the number. For example, the sum of the proper divisors of 28 would be 1 + 2 + 4 + 7 + 14 = 28,
#which means that 28 is a perfect number.
#
#A number n is called deficient if the sum of its proper divisors is less than n and it is called
#abundant if this sum exceeds n.
#
#As 12 is the smallest abundant number, 1 + 2 + 3 + 4 + 6 = 16, the smallest number that can be
#written as the sum of two abundant numbers is 24. By mathematical analysis, it can be shown that
#all integers greater than 28123 can be written as the sum of two abundant numbers. However, this
#upper limit cannot be reduced any further by analysis even though it is known that the greatest
#number that cannot be expressed as the sum of two abundant numbers is less than this limit.
#
#Find the sum of all the positive integers which cannot be written as the sum of two abundant
#numbers.

def is_abundant?(n)

  sum = 1

  for i in 2..(Math.sqrt(n))
    if n % i == 0
      sum += i
      if n/i != i
        sum += (n/i)
      end
    end
  end

  if sum > n
    return true
  else
    return false
  end
end

def get_abundants(n)
  
  a = []
  
  for i in 1..n
    if is_abundant?(i)
      a.push(i)
    end
  end
  
  return a
end

sum = 0
abundants = get_abundants(28123/2)

for i in 1..28123
  abundsum = false
  
  for n in 1..(i/2)
    if abundants.include?(n) && abundants.include?(i-n)
      abundsum = true
      break
    end
  end
  
  if !abundsum
      sum += i
  end
end

puts sum