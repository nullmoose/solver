#Let d(n) be defined as the sum of proper divisors of n (numbers less than n which divide
#evenly into n).  If d(a) = b and d(b) = a, where a ≠ b, then a and b are an amicable pair
#and each of a and b are called amicable numbers.
#
#For example, the proper divisors of 220 are 1, 2, 4, 5, 10, 11, 20, 22, 44, 55 and 110;
#therefore d(220) = 284. The proper divisors of 284 are 1, 2, 4, 71 and 142; so d(284) = 220.
#
#Evaluate the sum of all the amicable numbers under 10000.

def divsum(n)

  sum = 1

  for i in 2..(Math.sqrt(n))
    if n % i == 0
      sum += i
      if n/i != i
        sum += (n/i)
      end
    end
  end

  return sum
end

pairs = Hash.new
amisum = 0

for i in 1...10000

  if !(pairs.values.include?(i))
    n = divsum(i)

    if(i == divsum(n) && i != n)
      amisum += n
      amisum += i
      pairs[i] = n
    end
  end
end

puts amisum
