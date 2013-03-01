def is_palendrome(i)
  i.to_s == i.to_s.reverse
end

max = 0

999.downto(1).each do |i|
  999.downto(1).each do |j|
    if is_palendrome(i*j)
      puts i*j
      max = i*j if i*j > max
    end
  end
end

puts max
