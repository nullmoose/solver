#A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
#
#a^2 + b^2 = c^2
#For example, 3^2 + 4^2 = 9 + 16 = 25 = 5^2.
#
#There exists exactly one Pythagorean triplet for which a + b + c = 1000.
#Find the product abc.


#Euclid's formula:  a = m^2 - n^2 , b = 2mn , c = m^2 + n^2 

def findfactors(num)
  m = []
  n = []
  
  for i in 1..Math.sqrt(num)
    if num % i == 0
      m.push(num/i)
      n.push(i)
    end
  end
  
  mn = []
  mn.push(m)
  mn.push(n)
  
  return mn
end

def find_a(m,n)
  return (m*m) - (n*n)
end

def find_c(m,n)
  return (m*m) + (n*n)
end

found = false

500.downto(4) do |b|
  if b.even?
    mn = findfactors(b/2)
  else
    mn = findfactors(b)
  end
  
  for i in 0...mn[0].length
    if b.even?
      a = find_a(mn[0][i], mn[1][i])
      c = find_c(mn[0][i], mn[1][i])
    else
      a = find_a(mn[0][i], mn[1][i])/2
      c = find_c(mn[0][i], mn[1][i])/2
    end
    
    if (a + b + c) == 1000
       found = true
       puts a*b*c
       break
    end
    
  end

  if found
    break
  end
end
  
