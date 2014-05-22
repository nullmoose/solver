#The prime factors of 13195 are 5, 7, 13 and 29.
#What is the largest prime factor of the number 600851475143 ?

def checkprime(n)
  for i in 2..Math.sqrt(n)
    if n % i == 0
      return false
    end
  end
  
  return true
end

num = 600851475143
largeprime = 0

for i in 2..Math.sqrt(num)
  if num % i == 0
    if checkprime(i) == true
      if i > largeprime
        largeprime = i
      end
    
    if checkprime(num/i) == true
      if i > largeprime
        largeprime = num/i
      end
      
    end
    
    end
  end
end

puts largeprime
