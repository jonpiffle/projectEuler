require 'eulerLibrary'
include Euler

def check_rotations(p)
  initial = p
  while(initial != (p=rotate(p)).to_i)
  puts "#{p} #{initial}"
    if !p.to_i.prime?
      return false
    end
  end
  return true
end

primes = 1000000.prime_generator
count = 0
primes.each do |p|
  count+= 1 if check_rotations(p)
end

puts count
