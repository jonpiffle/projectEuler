require 'eulerLibrary'
puts 2000000.prime_generator.inject{|a, value| a + value}
