require 'mathn'

SQUARE_MAX = 7100
CUBE_MAX = 370
FOURTH_MAX = 84

def generate_primes(n)
  primes = Array.new
  p = Prime.new
  p.each do |p| 
    if p < n 
      primes.push(p)
    else
      break
    end
  end
  return primes
end

squares = generate_primes(SQUARE_MAX)
square_hash = Hash.new
squares.each do |s|
  square_hash[s] = s 
end

cubes = generate_primes(CUBE_MAX)
fours = generate_primes(FOURTH_MAX)

count = 0
for current_num in 28..50000000
  i=0
  while(current_num>fours[i]**4)
    j=0
    while(current_num>(fours[i]**4+cubes[j]**3))
      if (square_hash[(Math.sqrt(current_num - fours[i]**4- cubes[j]**3))])
         count+=1
      end
      j+=1
    end
    i+=1
  end
end
puts count
