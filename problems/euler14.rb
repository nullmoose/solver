#The following iterative sequence is defined for the set of positive integers:
#
#n ? n/2 (n is even)
#n ? 3n + 1 (n is odd)
#
#Using the rule above and starting with 13, we generate the following sequence:
#
#13 -> 40 -> 20 -> 10 -> 5 -> 16 -> 8 -> 4 -> 2 -> 1
#It can be seen that this sequence (starting at 13 and finishing at 1) contains 10 terms. Although it has not been proved yet (Collatz Problem), it is thought that all starting numbers finish at 1.
#
#Which starting number, under one million, produces the longest chain?
#
#NOTE: Once the chain starts the terms are allowed to go above one million.

big_count = 0
start = 1
tracker = []
tracker.push(0,1)

for i in 2...1000000
  count = 0
  n = i
  
  while n != 1 && n >= i
    count += 1
    
    if n.even?
      n /= 2
    else
      n = (3 * n) + 1
    end
  end
  
  tracker.push(count + tracker[n])
  
  if tracker[i] > big_count
    big_count = tracker[i]
    start = i
  end
  
end

puts start
puts big_count
