#A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 X 99.
#Find the largest palindrome made from the product of two 3-digit numbers.

def check_palindrome(s)
  for i in 0...(s.length/2).floor
    if s[i] != s[s.length-i-1]
      return false
    end
  end
  return true
end
  
bigpali = 0
  
999.downto(1) do |i|
  999.downto(1) do |n|
    if check_palindrome((i*n).to_s) == true
      if i*n > bigpali
        bigpali = i*n
      end
    end
  end
end

puts bigpali