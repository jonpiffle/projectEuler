PERIMETER = 1000

count = 0
max_count = 3
max_perm = 120


for p in 120..PERIMETER
  for c in 1..p/2 
    for b in 1..c-1
      if ((p-c-b)*(p-c-b) == c*c-b*b)
          count += 1
          #puts "perimeter: #{p}  sides:#{c}, #{b}, #{p-c-b}"
      end
    end
  end
  
  if count/2 > max_count
    max_count = count/2
    max_perm = p
  end
  count = 0
end

puts "perimeter of #{max_perm} has #{max_count} solutions"
