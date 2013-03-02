require 'eulerLibrary'

def truncate_front(i)
  i.to_s[1..-1]
end

def truncate_back(i)
  i.to_s[0..-2]
end

def check_front_back(p)
  n = p
  while((n = truncate_front(n)).to_s.length >= 1)
    return false unless n.to_i.prime?
  end

  n = p
  while((n = truncate_back(n)).to_s.length >= 1)
    return false unless n.to_i.prime?
  end
  
  return true
end

primes = 1000000.prime_generator
trunctable = Array.new

primes.each do |p|
  trunctable.push(p) if p.to_s.length > 1 && check_front_back(p)
end

puts trunctable.inject{|sum, a| sum + a}
