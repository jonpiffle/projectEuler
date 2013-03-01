t0 = Time.now

def lcm (array)
  running = Hash.new
  total = Hash.new
  
  array.each do |a|
    n = a
    i = 2
    while(i<=n)
      if n%i == 0
        running[i].nil? ? running[i] = 1 : running[i] += 1
        n = n/i
      else
        i+=1
      end
    end
    total = total.merge(running){|key, first, second| first > second ? first : second}
    running.clear
  end
  return total.keys.inject(1) { |product, key| product*(key**total[key])}
end

=begin
i = 2520
run = true
while(run)
  20.downto(11).each do |j|
    if i%j != 0
      i+=20
      break
    end
    if j == 11
      puts i
      run = false
    end
  end
end
=end


puts lcm(Array (11..20))
puts "#{Time.now - t0} s"
