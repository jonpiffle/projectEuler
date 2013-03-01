MAX = 9

def is_prime(n)
	if n < 1
		return false
	end
	for i in 2..n/2
		if n%i == 0
			return false
		end
	end
	return true
end

def permutations(s)
	s.chars.to_a.permutation.map(&:join)
end

def permutations_prime(s)
	if triple(permutations(s)).nil?
		return false
	end

	triple(permutations(s)).each do |p|
		if !is_prime(p.to_i)
			return false
		end
	end
	return triple(permutations(s))
end

def triple(set)
	set.each do |sa|
		set.each do |sb|
			set.each do |sc|
				if (sa.to_i-sb.to_i != 0) && (sa.to_i-sb.to_i == sb.to_i-sc.to_i)
					return [sa, sb, sc]
				end
			end
		end
	end
	return nil
end

for a in 0..MAX
	for b in 0..MAX
		for c in 0..MAX
			for d in 0..MAX
				if is_prime("#{a}#{b}#{c}#{d}".to_i)
					if permutations_prime("#{a}#{b}#{c}#{d}")
					end
				end	
			end
		end
	end
end
