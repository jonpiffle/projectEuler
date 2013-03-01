  class Integer
    def prime_generator
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

    def next_prime
      n = self
      while !(n+=1).prime?
      end
      n
    end

    def n_prime
      i=p=0
      while(i<=self)
        p = p.next_prime
        i+=1
      end
      p
    end
  end

module Euler
  def is_palendrome(i)
    i.to_s == i.to_s.reverse
  end

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

end
