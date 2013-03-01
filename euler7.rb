require 'eulerLibrary'

i = prime = 0

while(i<=10001)
  prime = prime.next_prime
  i+=1
end
puts prime
