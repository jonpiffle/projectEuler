#puts (11..1000000).select{ |i| i.to_s.split("").map(&:to_i).inject {|a,b| a + b**5} == i}.inject(:+)

for i in 11..100000
  if i.to_s.split("").map(&:to_i).inject {|a,b| a + b**5} == i
    puts i.to_s.split("").map(&:to_i)
end
