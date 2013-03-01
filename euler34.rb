MAX = 100000


def factorial_sum(num, h)
  sum = 0
  split_num(num).each do |i|
    if h[i]
      sum+=h[i]
    else 
      h[i] = factorial(i)
      sum+=h[i]
    end
  end
  return sum
end

def factorial(n)
  f = 1
  for i in 2..n
    f*=i
  end
  return f
end

def split_num(a)
  a.to_s.split(//).map(&:to_i)
end


sum = 0
h = Hash.new
for a in 11..MAX
  if factorial_sum(a,h) == a
    sum+=a
  end
end

puts sum
puts h.inspect
