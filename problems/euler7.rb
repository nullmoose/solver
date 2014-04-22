#By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
#
#What is the 10 001st prime number?

def checkprime(n)
  for i in 2..Math.sqrt(n)
    if n % i == 0
      return false
    end
  end
  
  return true
end

primecount = 1
num = 1

while primecount < 10001
  
  num += 2
  
  if checkprime(num)
    primecount += 1
  end
  
end

puts num