NUM = 100
h = Hash.new
for a in 2..NUM
  for b in 2..NUM
    i = a**b
    h[i] = i
  end
end

puts h.length
