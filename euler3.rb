class Integer
  def primes1
    sieve = [nil, nil].concat((2..self).to_a)
    (2 .. Math.sqrt(self).floor).each do |i|
      next unless sieve[i]
      (i*i).step(self, i) { |j| sieve[j] = nil }
    end
    sieve.compact!
  end

  def prime?
    root = Math.sqrt(self).floor
      (2..root).each do |i|
        if(self%i == 0)
          return false
        end
      end
    return true
  end
end

NUM = 600851475143

root = Math.sqrt(NUM).floor
i=2
max = 0
while(i < root)
  if(NUM % i == 0)
    if i.prime?
      max = i if i > max
    end
  
    if (NUM/i).to_i.prime?
      max = NUM/i if NUM/i > max
    end 
  end
  i+=1
end

puts max
