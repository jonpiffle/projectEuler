require 'mathn'

MAX = 50000000
MIN = 28

SQUARE_MAX = 7200
CUBE_MAX = 390
FOURTH_MAX = 94

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

def square_cube_four(h,a,b,c)
  ans = a**4+b**3+c**2
  if ans<=MAX
   h[ans] = ans
  end
end

primes = generate_primes(SQUARE_MAX)
#primes = generate_primes(CUBE_MAX)
#primes = generate_primes(FOURTH_MAX)

h = Hash.new
f=0
while MAX >= primes[f]**4 
  i=0
  while  MAX >= (primes[f]**4 + primes[i]**3) 
    j=0
    while  MAX >= (primes[f]**4+primes[i]**3+primes[j]**2)
      h[primes[f]**4+primes[i]**3+primes[j]**2] = primes[f]**4+primes[i]**3+primes[j]**2
      j+=1
    end
   i+=1
  end
f+=1
end

puts h.length
