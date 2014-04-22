#The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
#
#Find the sum of all the primes below two million.

def checkprime(n)
  if n == 2
    return true
  end
  
  for i in 2..Math.sqrt(n)
    if n % i == 0
      return false
    end
  end
  
  return true
end

sum = 2
i = 3

while i < 2000000
  if checkprime(i)
    sum += i
  end
  i += 2
end

puts sum
  