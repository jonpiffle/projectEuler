t0 = Time.now
NUM = 600851475143

n = NUM
x=2

while(true)
  if(n % x == 0)
    n = n/x
    if n != 1
      x = 1
    else
      break
    end
  end
  x += 1
end

puts x
puts "#{Time.now-t0} s"
