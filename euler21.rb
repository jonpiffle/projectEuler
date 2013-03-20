def factor_sum(n)
  sum = 1
  for i in 2..(Math.sqrt(n))
    if n%i == 0
      sum += i  
      sum += (n/i)
    end
  end
  return sum
end

N = 10000
h = Hash.new
ans = Hash.new
for i in 2..N
  a = h[i] = factor_sum(i)
  b = h[h[i]]
  if (h[a] == b && h[b] == a && a != b)
    ans[h[i]] = h[i]
    ans[h[h[i]]] = h[h[i]]
  end
end

puts ans.values.inject(:+)
