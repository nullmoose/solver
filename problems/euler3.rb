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

Math.sqrt(num).round.downto(2) do |i|
  if num % i == 0
    if checkprime(i) == true
      puts i
      break
    end
  end
end