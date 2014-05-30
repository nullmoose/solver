#Starting in the top left corner of a 2x2 grid, and only being able to move to the right and down, there are exactly 6 routes to the bottom right corner.
#
#How many such routes are there through a 20x20 grid?

def findpath(x,y)
  if x > 20 || y > 20
    return 0
  end
  
  if x == 20 && y == 20 
    return 1
  end
  
  return (findpath(x,y+1) + findpath(x+1,y))
end

puts findpath(0,0)