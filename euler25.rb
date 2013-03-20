i=j=n=1

while(i.to_s.length < 1000)
  i, j, n = j, i+j, n+1 
end

puts n
