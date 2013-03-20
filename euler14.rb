#RECURSIVE
def collatz(n,h)
  if n==1
    return 1
  end
  if n%2 == 0
    if h[n]
      return h[n]
    else
      return h[n] = collatz(n/2, h) + 1
    end
  else
    if h[n]
      return h[n]
    else
      return h[n] = collatz(3*n+1, h) + 1
    end
  end
end

h = Hash.new

max = 0
num = 0
for i in 1..1000000
  temp = collatz(i,h)
  if temp > max
    max = temp
    num = i
  end  
end

puts max
puts num
