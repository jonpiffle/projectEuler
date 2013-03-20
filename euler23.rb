MAX = 28123

def proper_divisor_sum(n)
  sum = 1
  for i in 2..Math.sqrt(n)
    if n%i == 0
      sum += i
      sum += n/i unless n/i == i
    end
  end
  return sum
end

def abundant_generator(max)
  h = Hash.new
  for i in 12..max
    if proper_divisor_sum(i) > i
      h[i] = i
    end
  end
  return h
end

abundants = abundant_generator(MAX)
puts "generated #{abundants.length} abundants"
ans = Hash.new
(1..MAX).each {|i| ans[i] = i}

abundants.values.each do |i|
  abundants.values.each do |j|
    if ans[i+j]
      ans.delete(i+j)
    end
  end
end

puts ans.values.inject(:+)
